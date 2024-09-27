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
    version = "1727451382";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1cbbe85eaad55215833e597d675e778db74ae80e/code-insider-x64-1727451382.tar.gz";
      sha256 = "0v6hap4clmjhk6264a3lb69jgx1vf5b87a1wv10i04r0wlcyhq78";
    };
  }
)
