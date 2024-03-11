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
    version = "1710155766";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8c8105002c089e657402b0f7ced80b2ecae6870c/code-insider-x64-1710155766.tar.gz";
      sha256 = "0zk3icxx6flggciyjlfz2pw086j7a0hls0qh67c0cc2psak7qmhl";
    };
  }
)
