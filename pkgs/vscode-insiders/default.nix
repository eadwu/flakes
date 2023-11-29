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
    version = "1701279513";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8762127fc97b8aaae5f3a0dd6a6d853d9a1b7574/code-insider-x64-1701279513.tar.gz";
      sha256 = "0bfmbp28cc8idh9kakbha28pfq5aag24awl03sn1aj7awnryzb7q";
    };
  }
)
