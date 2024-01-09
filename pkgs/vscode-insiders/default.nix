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
    version = "1704794235";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fb769554405bee9be16e21ceb0a496bd29126941/code-insider-x64-1704794235.tar.gz";
      sha256 = "0bl8dvyybx2rqdaf7pqjmmz1fl732byan6qssn6plyax1i7j5gzh";
    };
  }
)
