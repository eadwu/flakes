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
    version = "1610947589";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eaa959d34b863dec932077d94daece22504a396b/code-insider-x64-1610947589.tar.gz";
      sha256 = "0nb2qscivzs4zi79lrhnfiklmd77vdv150wfnj0b285yh2lb3pfm";
    };
  }
)
