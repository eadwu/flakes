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
    version = "1696964752";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b63441dbc9f729977e8e97321f536a06521496f7/code-insider-x64-1696964752.tar.gz";
      sha256 = "0igijcd7z8iy1fjz9rn3h9d53pyk5c0xbdq3m20vrmmh741bc51n";
    };
  }
)
