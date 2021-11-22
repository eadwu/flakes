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
    version = "1637560527";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4e303fcc52269ab578affa6cb1eb455eacab445f/code-insider-x64-1637560527.tar.gz";
      sha256 = "0pfxaa9lyshq1qifqs48jvmmgwkf2kxs95zl5n949sflg9cmp0k1";
    };
  }
)
