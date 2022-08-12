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
    version = "1660283128";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eebdf8174b087979ae6af103f6f2e2f6f9062056/code-insider-x64-1660283128.tar.gz";
      sha256 = "0kikbqqcxm3ic3vh54046s2sm2qd064nzrpfil4jj73wr6djb4gg";
    };
  }
)
