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
    version = "1724305814";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c2aa3c4625ed4b46448fa546ac5f2e93b0757718/code-insider-x64-1724305814.tar.gz";
      sha256 = "1yryp2kn2b7nwnishvkcl9wkm3vyx0gd8skvwrjz9v2a0qgdw4kx";
    };
  }
)
