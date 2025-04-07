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
    version = "1744025335";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0bc678a5f40a29370704a0de05b053f7ec447391/code-insider-x64-1744025335.tar.gz";
      sha256 = "18m0v3imvr787mjlggfjwh0h79lh7vsn7va5rr49k13wqcfzbd5z";
    };
  }
)
