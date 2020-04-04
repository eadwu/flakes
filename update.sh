#! /usr/bin/env nix-shell
#! nix-shell -i bash -p coreutils

for f in `find -mindepth 2 -name update.sh`; do
  dir="$(dirname "$f")"
  echo "running update script in $dir ... "
  "$f"
done
