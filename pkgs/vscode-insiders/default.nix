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
    version = "1677221086";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/720985f2c68cadb5e375d9ec671476c548f61769/code-insider-x64-1677221086.tar.gz";
      sha256 = "0s0pzkfk38bs8h28371m0qvgrpa1hbfcsz9hrw6y2072zjvblidb";
    };
  }
)
