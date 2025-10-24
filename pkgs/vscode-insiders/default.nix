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
    version = "1761316253";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c7e7ef5444582260f5b0ac1387a68649b0fa97c0/code-insider-x64-1761316253.tar.gz";
      sha256 = "0ig017nxbgibdblgwyaz5b4hw6a6n4pvpl14v2sfbklsb24lvw7l";
    };
  }
)
