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
    version = "1668532074";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/41cdd51a444f8a19e5e1df56d2eb660aafa4d0e2/code-insider-x64-1668532074.tar.gz";
      sha256 = "0vnmdc387ch2yq2wifwyp1d10ipw9qm2l76x3agm0m2xlccjjfx0";
    };
  }
)
