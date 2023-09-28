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
    version = "1695879236";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/aad333b878b4cfce2f4152d48552fb6f980d7daf/code-insider-x64-1695879236.tar.gz";
      sha256 = "0yv7skqzvp7fdrfwn0ynnynlgx9ws6wnxhgljznxmdq47vf9jrcw";
    };
  }
)
