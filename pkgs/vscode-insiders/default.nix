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
    version = "1720036563";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e6a828c5957959b7a18de37a567d850880101641/code-insider-x64-1720036563.tar.gz";
      sha256 = "1v1101li59fwqdbw01yganmjcn08i5i6nm71b9cd57ya1zmbbpgh";
    };
  }
)
