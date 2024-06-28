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
    version = "1719554154";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/aea213b7fcc7de5c24ad797ac1af209b159d451f/code-insider-x64-1719554154.tar.gz";
      sha256 = "1cigi894j0y6bm1sjhadf7sy5crfdi8jirknydsjfly7ma3qc3nj";
    };
  }
)
