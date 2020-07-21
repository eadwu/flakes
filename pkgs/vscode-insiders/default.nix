{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595336839";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eb1ca267d6a478734bd7f3d629ac9b80926ee9d1/code-insider-1595336839.tar.gz";
      sha256 = "180a4lqaik6kilvcic0flkiv6bcixihm5rf1fj4mrchy9yka9790";
    };
  }
)
