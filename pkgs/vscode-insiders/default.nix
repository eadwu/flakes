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
    version = "1622656500";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c324c61ad572be43a8696780e1aba3c1a2c46eee/code-insider-x64-1622656500.tar.gz";
      sha256 = "00k6p2j98c5wdbbwxbdrxnymfh54k95xw0rllzab3rk0jq7zyvq1";
    };
  }
)
