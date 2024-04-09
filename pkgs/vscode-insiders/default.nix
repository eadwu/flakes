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
    version = "1712641773";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f8d35f6a712c59f96078161799435d0e83461556/code-insider-x64-1712641773.tar.gz";
      sha256 = "1xc6zz25jhv9dsri25rs16zlr7xzq16vpzkw6sz1n6gqhfnalahy";
    };
  }
)
