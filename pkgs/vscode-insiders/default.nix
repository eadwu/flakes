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
    version = "1605164964";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/050a123750e4ef4009930d0da1ff7a1a6441d4f3/code-insider-x64-1605164964.tar.gz";
      sha256 = "1kninavysw018c51d2ki65wdj3r7yx5v37mdcmfjjr7ky88kpg4g";
    };
  }
)
