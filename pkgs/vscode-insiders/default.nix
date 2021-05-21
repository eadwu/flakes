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
    version = "1621575064";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4fd4e10e99eff9eb77408b71c7f58b7ed7458ee5/code-insider-x64-1621575064.tar.gz";
      sha256 = "1zc8mhn7wpzdbv9rdns0lkl8gf8qs8qnriiiiq9l4c9mvc6sxg01";
    };
  }
)
