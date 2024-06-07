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
    version = "1717749594";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6facfe23b300eb448c35d07291cad7ad98625302/code-insider-x64-1717749594.tar.gz";
      sha256 = "1ma1d6lll01siv2ma6nj5y5namzq4cfi1ks201gcsf2sf12lmlnh";
    };
  }
)
