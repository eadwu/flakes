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
    version = "1710741049";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9ccb0fa738a2f7a1c5328800c9fe18f4dd5b4f8a/code-insider-x64-1710741049.tar.gz";
      sha256 = "11v5zg19j4blb7r43yjj53q5v1v4n3snssfspnpxzkpszmvrrcq2";
    };
  }
)
