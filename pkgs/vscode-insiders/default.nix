{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595933616";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/15e798e081984a17eae00de91adf4479190d5ed2/code-insider-1595933616.tar.gz";
      sha256 = "0spy8yr4h5i07wnnajygidgiwxvfbayiji54mcicccw18zaqa6vp";
    };
  }
)
