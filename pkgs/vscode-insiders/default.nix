{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595223866";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6c21258b65e4c9448323c930fabb1ac6b734c597/code-insider-1595223866.tar.gz";
      sha256 = "0nwwl80rmdw40bs1il26pj2bg1igr8h8pdpwx3jkn423y1iq40nh";
    };
  }
)
