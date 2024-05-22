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
    version = "1716370258";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/81c89c4d00663e1718871bab2f9bf2064a060b63/code-insider-x64-1716370258.tar.gz";
      sha256 = "0n7xg7arff53wj1z6d709ypdgzkc2s16j65v7x2wnapdq5sljlj2";
    };
  }
)
