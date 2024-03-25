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
    version = "1711345918";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b0d975fc6370f15570c380f41015b1ca2cdcb791/code-insider-x64-1711345918.tar.gz";
      sha256 = "1055q55np5r31ysi2yhjzhnjcdk89g3qq3520vpfcv14nxfb5qfv";
    };
  }
)
