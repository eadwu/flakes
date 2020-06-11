{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591883091";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6af2987903c22bf9b19762d589bc46d4be636dc4/code-insider-1591883091.tar.gz";
      sha256 = "1b6ngj62ayjmpp01zrqqllcp7axfnpzyq2d5ji58p0rhnkh2bbx6";
    };
  }
)
