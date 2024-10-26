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
    version = "1729896751";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/38dc6ac5a771cc94bde1344722bb2d02c80096ea/code-insider-x64-1729896751.tar.gz";
      sha256 = "0sa2yi3yx5diszsg847pajzqjsjg86p2b1fmb4fiwpn2f3m9jkqy";
    };
  }
)
