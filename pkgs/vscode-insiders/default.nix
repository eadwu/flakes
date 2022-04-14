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
    version = "1649914854";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a7a7f209ade96c516ce3cd9b330aa8c3db816223/code-insider-x64-1649914854.tar.gz";
      sha256 = "182r9wlxx8rz4aq1iqcvdwkl6d98wrsk9ykl49i9cr6i9zpn0rk9";
    };

    postPatch = "";
  }
)
