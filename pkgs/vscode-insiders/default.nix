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
    version = "1710222537";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9c3cc8b9948d52f04836997a7de01dbd9bb2a7bf/code-insider-x64-1710222537.tar.gz";
      sha256 = "0igq22j37vq6djq0i27sq1wsa37lm1g2k6k0ny2fphcv8fvi0h5l";
    };
  }
)
