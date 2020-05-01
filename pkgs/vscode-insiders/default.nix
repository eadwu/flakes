{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1588298824";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2a36b7d0d527bf408bae4f96b8386db9d9455113/code-insider-1588298824.tar.gz";
      sha256 = "0l70g8c170qkcn20w6h4y7xgrvvd75mqni6rfqhh6naj5ja5divr";
    };
  }
)
