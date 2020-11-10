#! /usr/bin/env nix-shell
#! nix-shell -i bash -p coreutils

for f in `find -mindepth 2 -name update.sh | grep -v "/dwm/" | grep -v "/st/"`; do
  dir="$(dirname "$f")"
  echo "running update script in $dir ... "
  "$f"
done
