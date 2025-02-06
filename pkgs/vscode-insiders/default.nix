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
    version = "1738821257";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/edd39c48ec3c81b5f8c6ddf1893a95acf8662187/code-insider-x64-1738821257.tar.gz";
      sha256 = "13b5p4phr7yzkqz39m36fimph6lwxq3i15m4q7yl44z33nl67ajx";
    };
  }
)
