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
    version = "1724144182";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e2b54301a5745870f6b95d81c91fb3e9557d4f08/code-insider-x64-1724144182.tar.gz";
      sha256 = "0hawjs1k3j60rfc2c28h7hklwrdd5f6mx4ydi5rsnrhzxqx7319h";
    };
  }
)
