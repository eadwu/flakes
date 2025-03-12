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
    version = "1741757158";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fc7f88a0a73dac40ba16af282b40fddfb0d01f75/code-insider-x64-1741757158.tar.gz";
      sha256 = "0knhfr7nj6fykzvhzn9a8ydifyjspy6nl24yc9wx1a1ai96sv5m2";
    };
  }
)
