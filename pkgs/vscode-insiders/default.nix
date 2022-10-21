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
    version = "1666360665";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/504c5a768a001b2099dd2b44e9dc39e10ccdfb56/code-insider-x64-1666360665.tar.gz";
      sha256 = "1hbmfgb876b6scggg9m59qxl3nifyg531gy9z9i09vmz17x97lwi";
    };
  }
)
