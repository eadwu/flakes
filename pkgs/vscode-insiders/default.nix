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
    version = "1739380113";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/29ad3d06bde55ac2ed93599d63ae955778485cdb/code-insider-x64-1739380113.tar.gz";
      sha256 = "1mgzgs80lmnwjffardbjknr3mmgdn930a6whgsvry3j3jrj9wpds";
    };
  }
)
