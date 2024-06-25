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
    version = "1719294830";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3e9cab05385c88a3174175e47085952bd3caf8a3/code-insider-x64-1719294830.tar.gz";
      sha256 = "10v1dj2ai84yp6y4ihzrwhmpvn2k6xyigppy8xlxkfwhlidzcx9z";
    };
  }
)
