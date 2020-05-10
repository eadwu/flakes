#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nixFlakes jq curl nix-prefetch-scripts

current_dir="$(pwd)/$(dirname ${BASH_SOURCE[0]})"
root="$(readlink -f "$current_dir/../..")"

tmpdir="$(mktemp -d)"

src_url="$(jq -r '.url' "$current_dir/source.json")"
old_rev="$(jq -r '.rev' "$current_dir/source.json")"
old_date="$(jq -r '.date' "$current_dir/source.json")"

nix-prefetch-git --quiet "$src_url" --rev refs/heads/master > "$tmpdir/source.json"
new_rev="$(jq -r '.rev' "$tmpdir/source.json")"
new_date="$(jq -r '.date' "$tmpdir/source.json")"

if [ "$old_rev" != "$new_rev" ]; then
  rm "$current_dir/source.json"
  mv "$tmpdir/source.json" "$current_dir/source.json"

  git add "$current_dir/source.json"
  git commit -m "rust/nixpkgs-mozilla: $old_date -> $new_date"
fi

get_date() {
  local channel="$1"
  curl --silent "https://static.rust-lang.org/dist/channel-rust-$channel.toml" | \
    grep date | grep -Po '(?<=").*(?=")'
}

for f in "$current_dir/latest/"*.json; do
  channel="$(basename "$f" ".json")"
  attr="rustChannels.latest.$channel.rust"
  old_date="$(jq -r '.date' "$f")"
  old_hash="$(jq -r '.sha256' "$f")"

  new_date="$(get_date "$channel")"
  if [ "$old_date" != "$new_date" ]; then
    printf "updating %s\n" "$attr"

    mv "$f" "$f.bak"
    jq --arg DATE "$new_date" '.date = $DATE' "$f.bak" > "$f"

    if [ $? -ne 0 ]; then
      rm "$f"
      mv "$f.bak" "$f"
      printf "Failed to modify date of %s\n" "$f"
      exit 1
    fi

    rm "$f.bak"

    dummy_sha="$(echo dummy_sha | sha256sum | awk '{print $1}')"
    mv "$f" "$f.bak"
    jq --arg HASH "$dummy_sha" '.sha256 = $HASH' "$f.bak" > "$f"
    rm "$f.bak"

    nix build "$root#packages.x86_64-linux.$attr" --no-link &> "$tmpdir/$channel.fetchlog"

    new_hash="$(sed '1,/hash mismatch in fixed-output derivation/d' "$tmpdir/$channel.fetchlog" | grep --perl-regexp --only-matching 'got: +.+[:-]\K.+')"
    if [ "${new_hash: -1}" == "=" ]; then
      new_hash="$(nix to-base32 "sha256-$new_hash")"
    fi

    mv "$f" "$f.bak"
    jq --arg HASH "$new_hash" '.sha256 = $HASH' "$f.bak" > "$f"

    if [ $? -ne 0 ]; then
      rm "$f"
      mv "$f.bak" "$f"
      printf "Failed to modify hash of %s\n" "$f"
      exit 2
    fi

    rm "$f.bak"
    git add "$f"
    git commit -m "rust/$channel: $old_date -> $new_date"
  else
    printf "skipping %s\n" "$attr"
  fi
done

if [ -d "$tmpdir" ]; then
  rm -r "$tmpdir"
fi
