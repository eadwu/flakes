#! /usr/bin/env nix-shell
#! nix-shell -i bash -p wget

ROOT="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

declare -A SRCS=(
  # General
  ["someone-who-cares"]="https://someonewhocares.org/hosts/hosts"
  ["energized-unified"]="https://block.energized.pro/unified/formats/hosts"
  ["energized-regional"]="https://block.energized.pro/extensions/regional/formats/hosts"

  # Specific
  ["default-gitignore"]="https://www.toptal.com/developers/gitignore/api/c,r,git,c++,java,rust,cmake,elisp,emacs,latex,linux,macos,scala,haskell,database,intellij,visualstudiocode"
)

if [ ! -d "$ROOT/srcs" ];
then
  mkdir "$ROOT/srcs"
fi

for src in "${!SRCS[@]}";
do
  wget -O "$ROOT/srcs/$src" "${SRCS[$src]}"
done
