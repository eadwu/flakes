{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1666332266";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/504c5a768a001b2099dd2b44e9dc39e10ccdfb56/code-insider-x64-1666332266.tar.gz";
      sha256 = "0hyypv1blg067ihpg2w8g32zqvjsr1myxb0q6zd6qcz2g559qarq";
    };
  }
)
