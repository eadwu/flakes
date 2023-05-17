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
    version = "1684302546";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f1258a5fbed44b8f84a097c73c1799c13c5c3646/code-insider-x64-1684302546.tar.gz";
      sha256 = "11rhcwsk882w7hivvg7s1xvza9lxpc9jhaa30ar1k2l06w4278jz";
    };
  }
)
