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
    version = "1760968766";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/afecaaa7e88b2be589fc99ff1566c058b7fae906/code-insider-x64-1760968766.tar.gz";
      sha256 = "1yvs80qak4xd3qml30cj9jhrca0nlslw7iz560xa6fxkpshdp39k";
    };
  }
)
