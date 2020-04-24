{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587723039";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a250df703de955a38aed427a917bce8278ab3331/code-insider-1587723039.tar.gz";
      sha256 = "041m1nmszsk9v11az52z72lnnmzsl2ykfgfnpp3kgssiykhb0ia3";
    };
  }
)
