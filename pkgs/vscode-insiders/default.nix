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
    version = "1761024156";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7525da5e65a7ab2ca4542328ec2159d051320012/code-insider-x64-1761024156.tar.gz";
      sha256 = "0564r048ifiqq4jxfbpwlvzwflfk6s6k5l85y53aizqhlr3f6snp";
    };
  }
)
