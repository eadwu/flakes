{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590731591";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cd41dd1f6065db76c77c6e2f659bb50e6f558dec/code-insider-1590731591.tar.gz";
      sha256 = "1a93i3nm34cv9ysbffmdrlrp30ylxkz8l6wppkmq91db66r9ninf";
    };
  }
)
