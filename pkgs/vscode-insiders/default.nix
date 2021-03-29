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
    version = "1617014535";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/26a60dbecacc8bdacc06f7681ebe95398878a1cd/code-insider-x64-1617014535.tar.gz";
      sha256 = "04fs8xnf8ik1srpzmxxdvr8q711n3wa033q8w6mf6n633gasj7sy";
    };
  }
)
