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
    version = "1697129956";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9bb94efbe279580856897b63cc9417a3e875e405/code-insider-x64-1697129956.tar.gz";
      sha256 = "0xl9zdm4j8xrq2kh7i2pi3mcm4i3nfys6ikj4mx23v40nbi0mm3p";
    };
  }
)
