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
    version = "1721810124";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7ed4cdc56d037146b2c4c890f09e78b2ba14b49d/code-insider-x64-1721810124.tar.gz";
      sha256 = "1m7b0fi62r1kcnif5zbm7wsi55zc277gpj6lalpvcjnrv1yd9v8z";
    };
  }
)
