{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592377029";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/84f52fe1c0124307046ac0f5443493cda946e60f/code-insider-1592377029.tar.gz";
      sha256 = "0cf4s9ysayas4kxz582c9483s4dhv2dk6ky0lmg7w1vsigx9zjb9";
    };
  }
)
