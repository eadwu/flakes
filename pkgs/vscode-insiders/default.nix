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
    version = "1654536766";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/87630a9122f88f5062fe9964839a92116c274a86/code-insider-x64-1654536766.tar.gz";
      sha256 = "1135pp6z1x0ibwrziddnzapg593man6r4dmv2m053jyx1snj8gkn";
    };
  }
)
