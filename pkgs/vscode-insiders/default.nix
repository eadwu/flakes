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
    version = "1715924905";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a48f464a3e01aad384703ec964018299b14bb7cf/code-insider-x64-1715924905.tar.gz";
      sha256 = "1k3z1x4p4vwgb031dmqlm3w3g42ncyhnrvq5hxjiznb2i3z82lq9";
    };
  }
)
