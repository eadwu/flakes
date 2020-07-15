{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594791928";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cb31fc6ce2b4da3520392b622aa3ebc5b313533b/code-insider-1594791928.tar.gz";
      sha256 = "1wh29f14cwbr16xp48iyx46f27j7g1wgrl2jkn3vm9kj22wrywi4";
    };
  }
)
