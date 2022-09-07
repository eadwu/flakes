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
    version = "1662529402";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0f2de31e4856886cdbf32f85488bc40f480fb38f/code-insider-x64-1662529402.tar.gz";
      sha256 = "1adi7xsp8yb3vvyallyiqbmxab9rgfib7i9bgh1cjhlii2s0ig9s";
    };
  }
)
