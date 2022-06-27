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
    version = "1656319209";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e71b6105ebb4fbcfbf38a1b62bcbafdb048d3468/code-insider-x64-1656319209.tar.gz";
      sha256 = "0hzb7a2sks8q5vsazrz9adxgwmbp7ya0gqm17cc5451blni0hwnd";
    };
  }
)
