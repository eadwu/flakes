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
    version = "1679588048";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0bdaa6f4d8e2fe601514bdf110c8cbed0adfecd8/code-insider-x64-1679588048.tar.gz";
      sha256 = "1lmxaf2ayzpijdswxx3aa7j7439a44ccvz27sr43jgskvx74k49f";
    };
  }
)
