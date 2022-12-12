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
    version = "1670850315";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d7b1e2a1c892511a125e4ceb9758ec8ddf907775/code-insider-x64-1670850315.tar.gz";
      sha256 = "0i0pmvl3pa68b9yqh9681min1crv7984arrkd92xh7xf8d87cgcz";
    };
  }
)
