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
    version = "1621415506";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a9c5e37ea0dc020f5df3b1c82ef020627fc8cd7c/code-insider-x64-1621415506.tar.gz";
      sha256 = "02nj9wq9bgq3vpp5a3bkr74pj5yqhpsryza3navkgn8sd3xhnwg2";
    };
  }
)
