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
    version = "1713419262";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/59d84c5c8cecf22b24e316c5443dc3ec49462589/code-insider-x64-1713419262.tar.gz";
      sha256 = "123fmc7saqz3g3q022l71cv6cfirz42375mswv1dl9dg5nn6ynpm";
    };
  }
)
