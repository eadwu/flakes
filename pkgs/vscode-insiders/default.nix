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
    version = "1721886747";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/50560b991207e2bb70a6e177f2c2e88949a01e6c/code-insider-x64-1721886747.tar.gz";
      sha256 = "0mk6v3bs2frcgi0a6jh9qnxcmfqq9b6ml92fqzcmq2xsds7a57lk";
    };
  }
)
