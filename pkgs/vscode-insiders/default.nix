{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602826012";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/89c002ab02f87102d91efc83c191ef1174756c6a/code-insider-x64-1602826012.tar.gz";
      sha256 = "0jpjsqhr26jj8i76h7dv8cnba2xms0qliaa1rck5i45rsga8v06p";
    };
  }
)
