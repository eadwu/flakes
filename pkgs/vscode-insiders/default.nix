{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591942041";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7e4cc2c435927e5a2845897961a2af10ee7f784d/code-insider-1591942041.tar.gz";
      sha256 = "1vq5bdj7c7lry5jrlj1bg921rdm8jj4wcl59ma0dz69j3cvd1wwm";
    };
  }
)
