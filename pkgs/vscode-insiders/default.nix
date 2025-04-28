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
    version = "1745817788";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e537209981ec17eb09b8c5049deb7d8127fc034b/code-insider-x64-1745817788.tar.gz";
      sha256 = "07a1w1w742i7imdrlczd2r4640d1az21jjv0n8rcqv64v5zjzly4";
    };
  }
)
