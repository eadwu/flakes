{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595483307";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c426f9f3b6b18935cc6c2ec8aa6d45ccd88021e/code-insider-1595483307.tar.gz";
      sha256 = "014178smdwfppc1vx2pnhrdqf4vi2wik0q8pwgbcrxy1svhlcj20";
    };
  }
)
