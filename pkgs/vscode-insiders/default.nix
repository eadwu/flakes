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
    version = "1616045455";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/111a6cec70f9562cdd31a5fd8cdea4b3a9b7bd82/code-insider-x64-1616045455.tar.gz";
      sha256 = "14j06qvy443jljly0x5nlkf1fxiqbfd9d19f7w3nslh3y2yz4936";
    };
  }
)
