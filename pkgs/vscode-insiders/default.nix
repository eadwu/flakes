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
    version = "1740720515";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2daf886e20631c9b236a1f574fa9d4d05c61942c/code-insider-x64-1740720515.tar.gz";
      sha256 = "002qbbnmcyxiqpv2ynlkia7pm2z4hywccbkvaq4gz07d3flg7891";
    };
  }
)
