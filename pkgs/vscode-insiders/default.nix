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
    version = "1637128090";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d450b04c783dfa6f83dc439017767acccd4e9fac/code-insider-x64-1637128090.tar.gz";
      sha256 = "11s6fg85f95hfxnahk0rm7dmjslw1hy4ipvncl79w9r05rxc1bf3";
    };
  }
)
