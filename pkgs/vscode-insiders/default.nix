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
    version = "1696619311";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/874831ebcf088f59735879156f62308ce48f17d1/code-insider-x64-1696619311.tar.gz";
      sha256 = "1msjkqrhq4npidj14bg8yc4zwh0scv1zcmxy1yv3m78cw45d5h2x";
    };
  }
)
