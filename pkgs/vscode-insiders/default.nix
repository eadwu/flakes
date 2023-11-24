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
    version = "1700804148";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/aed074f18b4ac2cf2830fa9b57e1441b632fdddc/code-insider-x64-1700804148.tar.gz";
      sha256 = "087c3vm742dbph2cqm7z50spqg55dzg8s1zc6dg31z87kcxlqd9p";
    };
  }
)
