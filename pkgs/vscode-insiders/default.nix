{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596805539";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2277c8e2a3e1cc630a6397301ba54a1dccd8a60d/code-insider-1596805539.tar.gz";
      sha256 = "0k54q3xx4p8ij80dknwljwihfw8y4yq52jd1jybzg664i8g2kahb";
    };
  }
)
