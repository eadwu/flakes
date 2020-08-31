{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598852752";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f66741dc2b4944e153719bb48bcaa9c565cc40f7/code-insider-1598852752.tar.gz";
      sha256 = "13mh408zj7560vl9az3byyfcn1k5c3lrfng0c1sn45sml9cmf8xs";
    };
  }
)
