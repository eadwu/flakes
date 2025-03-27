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
    version = "1743053042";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ff52a0da2eeb3d4c590a85cf14ca13a9d6c1b2cd/code-insider-x64-1743053042.tar.gz";
      sha256 = "1jdq12h35d5625izfm4wwjzxp19b22wm2h8d9f5y5j1az9wvrkg9";
    };
  }
)
