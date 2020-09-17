{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600364071";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3156f1fbfcbb7bdd5f7aa24b4cde71526d1980c8/code-insider-x64-1600364071.tar.gz";
      sha256 = "1zq876620sspwhmx5vaqs3in3ajqvdlchmlgph0n0j8l6dy33lg2";
    };
  }
)
