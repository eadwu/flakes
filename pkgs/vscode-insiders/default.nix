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
    version = "1654843924";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ab6ba241145bb81c8bc0f323453bbec45fd66109/code-insider-x64-1654843924.tar.gz";
      sha256 = "0r3j1l91x7d6y30h95x2sv01vd2nln149q1602qn1zbzf8x5ac87";
    };
  }
)
