{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590655719";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1d268b701376470bc638100fbe17d283404ac559/code-insider-1590655719.tar.gz";
      sha256 = "0cc8cjf593g21xhq0nm6c5lkaidbd0h2pqdykfy2wx7z729mhja0";
    };
  }
)
