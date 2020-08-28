{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598511830";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b58f4549b2919fa3a5dc52df83f4ba60780c625f/code-insider-1598511830.tar.gz";
      sha256 = "1gkl1wqy7f8br4h6g22lb78br7wsbn13ga89fcpinmy96rs4vmq1";
    };
  }
)
