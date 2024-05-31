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
    version = "1717118044";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ca688da9fb6dad00996cee7d5342490daa7bb1fb/code-insider-x64-1717118044.tar.gz";
      sha256 = "1blkplhfzfjcx0j3ag9gsdy7qaba93243wzpbl5pl3nlcc75cm5m";
    };
  }
)
