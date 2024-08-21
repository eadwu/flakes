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
    version = "1724219381";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e1db90f81da28c0994b5d50dc2b51e964359e62d/code-insider-x64-1724219381.tar.gz";
      sha256 = "19m433qfpiy0xz66a601gd2p892vfk8k39x8h13167jzm3cgdjss";
    };
  }
)
