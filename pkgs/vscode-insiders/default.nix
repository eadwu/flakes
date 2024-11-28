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
    version = "1732793632";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1bdee4500fc32f4eb195e087501b8c9331447fb3/code-insider-x64-1732793632.tar.gz";
      sha256 = "1wqa5chmif44w7j9g11mxy6f0vhq42c9xv7hxk2x39m58wx4gx71";
    };
  }
)
