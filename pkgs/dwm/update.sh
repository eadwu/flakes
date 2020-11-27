#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nixFlakes jq wget nix-prefetch-scripts

current_dir="$(pwd)/$(dirname ${BASH_SOURCE[0]})"
root="$(readlink -f "$current_dir/../..")"
attr="dwm"
branch="develop"

drv="$root#packages.x86_64-linux.$attr"
old_version="$(nix show-derivation "$drv" | jq -r '.[].env.version')"
old_src_drv="$(nix show-derivation "$drv" | jq -r '.[].env.src')"
old_hash="$(nix show-derivation "$old_src_drv" | jq -r '.[].env.outputHash')"
old_rev="$(nix show-derivation "$old_src_drv" | jq -r '.[].env.urls' | grep -Po '(?<=sha=).+')"
repo_src="$(nix show-derivation "$old_src_drv" | jq -r '.[].env.urls' | grep -Po '(?<=projects/).+(?=/repository)' | sed 's@%2F@/@')"

tmpdir="$(mktemp -d)"
dest="$tmpdir/result"
git clone --quiet "https://gitlab.com/$repo_src.git" "$dest"

(cd "$dest" && git fetch --all)
new_version="$(cd "$dest" && git log -1 --format=%cs "origin/$branch")"
new_revision="$(cd "$dest" && git rev-parse "origin/$branch")"
new_hash="$(nix-prefetch-git "https://gitlab.com/$repo_src.git" --rev "$new_revision" --quiet | jq -r '.sha256')"

rm -rf "$tmpdir"

# https://github.com/NixOS/nixpkgs/blob/0e6ceb87584feec4836975d8216f9ca4c2199e0e/pkgs/common-updater/scripts/update-source-version#L108
# Escape regex metacharacter that are allowed in store path names
old_version_escaped="$(echo "$old_version" | sed -re 's|[.+]|\\&|g')"

source_file="$current_dir/default.nix"
sed -i "$source_file" -re "s|\"$old_version_escaped\"|\"$new_version\"|"
sed -i "$source_file" -re "s|\"$old_hash\"|\"$new_hash\"|"
sed -i "$source_file" -re "s|\"$old_rev\"|\"$new_revision\"|"

if [[ "$new_version" != "$old_version" ]]; then
  git add "$source_file"
  git commit -m "$attr: $old_version -> $new_version"
fi
