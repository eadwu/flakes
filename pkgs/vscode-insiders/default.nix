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
    version = "1713333005";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/910284865c34fd492e3f6fd5a8ab8e571432cc58/code-insider-x64-1713333005.tar.gz";
      sha256 = "1jad51lr2vibz44j1qpwy22cm66yv9jcmfvcn69snvfvqb6wsf53";
    };
  }
)
