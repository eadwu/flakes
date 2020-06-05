{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591339591";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cde20069b3b16256b0fd0def711c35329a84c02d/code-insider-1591339591.tar.gz";
      sha256 = "0fd0ci384ynn6mszrl9idfsigfrkya6n01ck6ikzs1fzclpp19pb";
    };
  }
)
