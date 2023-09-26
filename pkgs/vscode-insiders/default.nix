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
    version = "1695706472";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8ecf5453e8e8f98cca0f9a661d3a6457d8a0e703/code-insider-x64-1695706472.tar.gz";
      sha256 = "195as6vh93zzlnba1rjnal8yzqvwsih2dy6am8qmk33x8wh3lglb";
    };
  }
)
