{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592809034";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/269f0fdd83f1e6611dd0c6d225a1685719eafedb/code-insider-1592809034.tar.gz";
      sha256 = "0s48v8s769zsdqsmslvaqshrb0nc7fg44py23wds1k7r7d2cr4g8";
    };
  }
)
