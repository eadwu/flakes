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
    version = "1710827452";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7c51753f7ce936a7aeb84ac881818c35c5a9ab8d/code-insider-x64-1710827452.tar.gz";
      sha256 = "0kaalqqj0nf9kc176im2j112d4qmxsjf7cpzhxri0nivy9w7d7fz";
    };
  }
)
