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
    version = "1706074568";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1091f68d834974d78cd4f9769034b4ae4581ff2a/code-insider-x64-1706074568.tar.gz";
      sha256 = "1mj0q3p58dmws3blqls2d2a36xjnk3wm6rxjdrwp9jknsq2yjc9b";
    };
  }
)
