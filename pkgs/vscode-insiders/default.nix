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
    version = "1737007227";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/31188fed068c5c724d73a1956c846401d4d7b01d/code-insider-x64-1737007227.tar.gz";
      sha256 = "15snz644snv94nvnzdzpa9yqd7kyrj80rba9jh5i5n9dsd1k9d3x";
    };
  }
)
