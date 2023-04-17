#! /usr/bin/env nix-shell
#! nix-shell -i bash -p wget

ROOT="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

declare -A SRCS=(
  # General
  ["someone-who-cares"]="https://someonewhocares.org/hosts/hosts"

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

  if [ "$?" == "0" ];
  then
    git add "$ROOT/srcs/$src"
    git commit -m "$src: $(date "+%s")" || true
  fi
done
