{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596534947";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7906d414c0af9e1e6cc4497559add84250d35d49/code-insider-1596534947.tar.gz";
      sha256 = "0cbskbl0y3g7zc25788cfald1a0b6vrqcpjh6sfay12w3nrlyikb";
    };
  }
)
