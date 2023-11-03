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
    version = "1699011543";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1ef160d5bc6aab85b74e34c98d7861c7727a37ec/code-insider-x64-1699011543.tar.gz";
      sha256 = "1r54fskvnzf4gkdfqsvaqccmiy9bniil5dxff39bi75i2sbw95kz";
    };
  }
)
