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
    version = "1684546950";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f6be5461f8bc69013a605f5baea834651c6589fb/code-insider-x64-1684546950.tar.gz";
      sha256 = "0yx4wzy1xyfzki3v5mcz4n87ip4ix6gfmj6k2g45g63kp02lhy3x";
    };
  }
)
