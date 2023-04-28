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
    version = "1682686216";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e410e7c66e7ce5c6bc31f73150d66857804a0ee9/code-insider-x64-1682686216.tar.gz";
      sha256 = "1bk35jb7nb81hizm6m75w5q1y1gr0f7ihfjliq29hr65y1d7x7d3";
    };
  }
)
