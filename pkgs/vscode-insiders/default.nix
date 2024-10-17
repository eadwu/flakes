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
    version = "1729144456";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/62a233cc87dc8d52a817739bc0d917089d4d103b/code-insider-x64-1729144456.tar.gz";
      sha256 = "1858drw59x0nvn0i6c538lqfypwsx60j1ff5mz99jj5hdrszm9x8";
    };
  }
)
