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
    version = "1673329569";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7b5449579249db344d473370d56a5df9446c826/code-insider-x64-1673329569.tar.gz";
      sha256 = "1akns8xpaxqmj78g4yz136z41wbk3icrj1mzm9xixnqi02dc1p8v";
    };
  }
)
