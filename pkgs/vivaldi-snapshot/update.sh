#! /usr/bin/env nix-shell
#! nix-shell -i bash -p jq yq curl

current_dir="$(pwd)/$(dirname ${BASH_SOURCE[0]})"
root="$(readlink -f "$current_dir/../..")"
attr="vivaldi-snapshot"

get_version () {
  curl --silent "https://update.vivaldi.com/update/1.0/win/appcast.xml" | \
    xq -r '.rss.channel.item.enclosure."@sparkle:version"'
}

new_version="$(get_version)"
new_url="https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${new_version}-1_amd64.deb"
new_hash="$(nix-prefetch-url "$new_url")"

drv="$root#packages.x86_64-linux.$attr"
old_version="$(nix show-derivation "$drv" | jq -r '.[].env.version')"
old_src_drv="$(nix show-derivation "$drv" | jq -r '.[].env.src')"
old_url="$(nix show-derivation "$old_src_drv" | jq -r '.[].env.urls')"
old_hash="$(nix show-derivation "$old_src_drv" | jq -r '.[].env.outputHash')"

# https://github.com/NixOS/nixpkgs/blob/0e6ceb87584feec4836975d8216f9ca4c2199e0e/pkgs/common-updater/scripts/update-source-version#L108
# Escape regex metacharacter that are allowed in store path names
old_version_escaped="$(echo "$old_version" | sed -re 's|[.+]|\\&|g')"
old_url_escaped="$(echo "$old_url" | sed -re 's|[.+]|\\&|g')"

source_file="$current_dir/default.nix"
sed -i "$source_file" -re "s|\"$old_url_escaped\"|\"$new_url\"|"
sed -i "$source_file" -re "s|\"$old_version_escaped\"|\"$new_version\"|"
sed -i "$source_file" -re "s|\"$old_hash\"|\"$new_hash\"|"

if [[ "$new_version" != "$old_version" ]]; then
  git add "$source_file"
  git commit -m "$attr: $old_version -> $new_version"
fi
