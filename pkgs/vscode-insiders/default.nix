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
    version = "1623389436";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/012b14606f75ec4fed90d7ab4154f63dffab9503/code-insider-x64-1623389436.tar.gz";
      sha256 = "1aw8wx1bj5lq067dqxjdwa835x4qgk79j4al7vq827x3byjjvgjh";
    };
  }
)
