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
    version = "1761283260";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a62e32a7b2b557aa14ab853f6457bdaa1e0c2a19/code-insider-x64-1761283260.tar.gz";
      sha256 = "1j05bfyadh1pggjjlilkvy9k907f15s4arn5v8185cg5p674xvia";
    };
  }
)
