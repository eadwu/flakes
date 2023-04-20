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
    version = "1681969335";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/208bbb0d788cce3eb80799e3565ee2204391b86d/code-insider-x64-1681969335.tar.gz";
      sha256 = "1zcrak6jngpy8q88sw5947s9az8yfq8737zjckiz9ysw3lh4pbfi";
    };
  }
)
