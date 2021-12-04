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
    version = "1638584891";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d09289a2b6dd0e56b2a264a8e9380685498e10d6/code-insider-x64-1638584891.tar.gz";
      sha256 = "0macqnq06xivbgs822kmlz3mggigrd6spsf8dp2kql2va8wv48bz";
    };

    postPatch = "";
  }
)
