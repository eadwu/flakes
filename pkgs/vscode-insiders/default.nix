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
    version = "1611604382";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/51d19635946a76d2f9007f9e4f4db1c26a0ebfae/code-insider-x64-1611604382.tar.gz";
      sha256 = "085z2hqg02w9j3glc8mqfd4l6vysnrfl5sspr0psc3x16fcsyvh0";
    };
  }
)
