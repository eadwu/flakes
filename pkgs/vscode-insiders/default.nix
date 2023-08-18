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
    version = "1692336752";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/501baeb5e07b5a404f862d922bacb93771d91331/code-insider-x64-1692336752.tar.gz";
      sha256 = "1prshql24lbwgydbsv115vqqicgziixd3nllzc891a1f4f74vy53";
    };
  }
)
