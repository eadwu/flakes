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
    version = "1748412236";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b4912823f452c08e81283d8fd8dd9e758a00f5f4/code-insider-x64-1748412236.tar.gz";
      sha256 = "0wk0v7jhkxzi384l1hrrjzdfs2ii27rldcnyb7nwswc6b3p7jnfq";
    };
  }
)
