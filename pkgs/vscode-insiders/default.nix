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
    version = "1688760592";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ad791ef3d26b99963da31636af697afd86575435/code-insider-x64-1688760592.tar.gz";
      sha256 = "1p6w876cjdk9cbghja7lfs27dcdwxx8zi3qlwzq9g8jmkma3009b";
    };
  }
)
