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
    version = "1634808822";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/97018d742e4ce3dfbcdb0a02c42c16c6c152e4e1/code-insider-x64-1634808822.tar.gz";
      sha256 = "14jpv1637sfghnsinrljkdng8mq63ffq0ggggl6bcdhx1b1vammh";
    };
  }
)
