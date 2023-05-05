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
    version = "1683239615";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2c73d2651cc525b27fc697b820743098a204ec01/code-insider-x64-1683239615.tar.gz";
      sha256 = "0zb6p93pm1972zxxsq98ri54lppraddcb4whbr6jqwy1ai600cgz";
    };
  }
)
