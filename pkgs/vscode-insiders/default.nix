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
    version = "1682402482";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2902f278ad8e2d830fa6883d3d8fd7b5c2ca59e9/code-insider-x64-1682402482.tar.gz";
      sha256 = "1dw90rnxhy7cn3gdl9mm9zvnc4yjx6jgacq9zx00w0vcnddxmr6a";
    };
  }
)
