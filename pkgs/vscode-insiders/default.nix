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
    version = "1718965549";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/63d06667600a2c40245a0ab1f9e2ea816d2fe849/code-insider-x64-1718965549.tar.gz";
      sha256 = "0c6y7nvzmn5xlfy90w3hmy1z5199lq3ymzc35lnsikkf73l1iykr";
    };
  }
)
