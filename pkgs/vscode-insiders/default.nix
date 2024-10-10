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
    version = "1728539514";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/490dc3da779118d14a16d3b149d8c44edb9b1e07/code-insider-x64-1728539514.tar.gz";
      sha256 = "0ckhf1q59rcscs3i16518n96zcnqy80jw8p9ia4zlylr0dxvznkm";
    };
  }
)
