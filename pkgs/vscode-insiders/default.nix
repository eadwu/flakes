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
    version = "1699966014";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/54821ee1f14beca4866abd7de86175b4794b030d/code-insider-x64-1699966014.tar.gz";
      sha256 = "08vh6dbfgjlbp0w56sjgq850jaa9j4zarwcldx2gi2lag0zbf3b5";
    };
  }
)
