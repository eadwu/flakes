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
    version = "1666072089";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7f838df2840e341c96421fc54a38185911b31102/code-insider-x64-1666072089.tar.gz";
      sha256 = "1wvl6rl9bz29hsf4vjwyffjdvjhz2b4xazj5ff6zvn5s5493458a";
    };
  }
)
