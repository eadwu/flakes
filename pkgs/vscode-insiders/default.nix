{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600676069";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c1015f5e1a7a686d19ec8a5f56a495332f16062/code-insider-x64-1600676069.tar.gz";
      sha256 = "1s7z4c7j1liakfq48j1rrz88blrcw74mbckk6n919s88qrsh7f3j";
    };
  }
)
