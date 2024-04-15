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
    version = "1713160191";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6f91cdc47ae284c0a6fec5aa597b9cbcf3cd185c/code-insider-x64-1713160191.tar.gz";
      sha256 = "126jjg7hxkz4fpvl8l31ig4x0p1dzsckx50531066y8dadh0n41z";
    };
  }
)
