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
    version = "1740420328";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e95380d32c974525a0736f258db73214a27b1a09/code-insider-x64-1740420328.tar.gz";
      sha256 = "0zfj7djr800ak88jhjd8sl9722j19yipwh0ldn9x0vbi57jm2ylz";
    };
  }
)
