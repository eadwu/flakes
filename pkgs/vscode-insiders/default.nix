{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593112949";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9b620b291e120caab8292cab38cad10c2b22dffe/code-insider-1593112949.tar.gz";
      sha256 = "1gixdwc9d1m0hxgw21kah3ww6435ckf91ggad5c0737cp1kmmqfb";
    };
  }
)
