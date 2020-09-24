{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600941281";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/73b33dcbc8204c23ae30b53ce129b32c6da98197/code-insider-x64-1600941281.tar.gz";
      sha256 = "17xgz6zijsvm06x6p5p82z529b3lvixjywh809x3f40qpaiyq1c7";
    };
  }
)
