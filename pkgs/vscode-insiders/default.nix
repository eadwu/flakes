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
    version = "1733524308";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e8e69d3d3901485d83a1043cbfc5516d35756e10/code-insider-x64-1733524308.tar.gz";
      sha256 = "0vcljwx6whh0vmqkyv32n7psjb09qnfpcvpcixdh54x2xwzxdq3n";
    };
  }
)
