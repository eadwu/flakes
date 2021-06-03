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
    version = "1622700953";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/20df87725d3ce4a501187f0240c2f159aa0ad2a5/code-insider-x64-1622700953.tar.gz";
      sha256 = "1wllyhf4ic520r0r3wbkwhqy8pwi7cnnqy6096bib2vii3q9jz8d";
    };
  }
)
