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
    version = "1745517657";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d9fd8a5eebc1385eaad269ddf5b8865fc6191e26/code-insider-x64-1745517657.tar.gz";
      sha256 = "1nc63fcnd0m0nvjw779s3kbjjcv9bj4qr42fspfnrsn8fj159syz";
    };
  }
)
