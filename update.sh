#! /usr/bin/env nix-shell
#! nix-shell -i bash -p wget

ROOT="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

declare -A SRCS=(
  # General
  ["someone-who-cares"]="https://someonewhocares.org/hosts/hosts"
  ["oisd-small"]="https://small.oisd.nl/simplednsplusdblpi"
  ["oisd-big"]="https://big.oisd.nl/simplednsplusdblpi"
  ["oisd-nsfw"]="https://nsfw.oisd.nl/simplednsplusdblpi"
  ["hagezi"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/ultimate.txt"
  ["threat-intelligence-feeds"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/tif.txt"
  ["1hosts"]="https://github.com/badmojr/1Hosts/releases/download/latest/1hosts-Pro_hosts.win"

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
