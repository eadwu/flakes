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
    version = "1636954967";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/035eaab2cb31798c6ae90a35928c62117cb52fcd/code-insider-x64-1636954967.tar.gz";
      sha256 = "092l9rfy85w1b98l5lvrx40p0y1h190hvi58544hvfpxbh4423sg";
    };
  }
)
