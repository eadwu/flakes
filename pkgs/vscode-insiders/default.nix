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
    version = "1664430375";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/96dda01dafdf4badf360d8dcc3c7eaf448fae7f9/code-insider-x64-1664430375.tar.gz";
      sha256 = "0srkcri6ca6aij1ycih23cnf7l1q7g5x9vkm9m9qzllq8a4g6awi";
    };
  }
)
