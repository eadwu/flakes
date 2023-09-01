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
    version = "1693520959";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/79277e0b8f045483a49f8a6834d476410c0d3cba/code-insider-x64-1693520959.tar.gz";
      sha256 = "0cz5vhxsl8mc3wka18vyh767c116fm977vwj86m3c8628niccnzs";
    };
  }
)
