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
    version = "1723884157";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5a0335dcf3ffe79466b90d7c24923f3158fac81a/code-insider-x64-1723884157.tar.gz";
      sha256 = "1x2inq0j8g19ff94gpsgs7pcigap60h3za1360r1mb2wkl43x9hm";
    };
  }
)
