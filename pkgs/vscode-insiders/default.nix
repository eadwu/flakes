{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1643002863";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2c967bf892d52550fabae08347faae57a4539b03/code-insider-x64-1643002863.tar.gz";
      sha256 = "18pmg802dsia2j1vm5hg2bdvdd5fzvnisvk47cqim1xdx8fd8cx3";
    };

    postPatch = "";
  }
)
