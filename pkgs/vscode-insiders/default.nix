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
    version = "1691386452";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1606401f5b761397488f53b75130809fba073194/code-insider-x64-1691386452.tar.gz";
      sha256 = "1ns7mh321g2nqrir9zwmbxh2dd80c82mrzf5m5i031gsqj2a9bsc";
    };
  }
)
