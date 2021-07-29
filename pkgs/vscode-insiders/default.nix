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
    version = "1627537013";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0f22f2d343e33b03e8033d1083513072f58ece21/code-insider-x64-1627537013.tar.gz";
      sha256 = "10wpl1q50jppf769ryx1czl8a3bqw567gjvj8z36xg5fql3rkfdx";
    };
  }
)
