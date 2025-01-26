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
    version = "1737740366";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0979fcbb4333bd20e06423fe39e84aae707aef82/code-insider-x64-1737740366.tar.gz";
      sha256 = "1sxk0bvd1bvlgm032mcjibdm323qfxjyi70j68f69z2kwxwms0l3";
    };
  }
)
