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
    version = "1624428531";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9744231fc12f1aed21089180b3f0394d694bd2a2/code-insider-x64-1624428531.tar.gz";
      sha256 = "1z9319wp628ngdcirp4lyrdjqhwbghr6qm051sma5a8g68zaip3j";
    };
  }
)
