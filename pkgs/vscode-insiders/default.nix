{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591642135";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2f1809c74fe73c470ae09a357c74d34f19acdb71/code-insider-1591642135.tar.gz";
      sha256 = "1fq788djvbpxdhi94nfjxq7y1n00xvq618cwz5qxhwxqc1ysp667";
    };
  }
)
