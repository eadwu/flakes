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
    version = "1727071104";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1926933184de3f77ac7176e9fc302c54bd9634b0/code-insider-x64-1727071104.tar.gz";
      sha256 = "19a26v9m4psdjcixxsyqjpy5h19sfscc8zh10vwvhfnsfv9bfh9c";
    };
  }
)
