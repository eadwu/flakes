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
    version = "1621315671";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45aafeb326d0d3d56cbc9e2932f87e368dbf652d/code-insider-x64-1621315671.tar.gz";
      sha256 = "0zlkszj5x1gxc7679v5ikiidzfqc8rl0mcxnf38d0fg6fc6yn5ls";
    };
  }
)
