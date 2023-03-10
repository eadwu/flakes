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
    version = "1678474960";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f42f45a7d219952ac07b6ed6ba5c4c107cf5aa2d/code-insider-x64-1678474960.tar.gz";
      sha256 = "01w9cxx3ch0rsqlin5kwg7nf36m13d0kq6js647391206jh6p5gs";
    };
  }
)
