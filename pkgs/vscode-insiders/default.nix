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
    version = "1610342919";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3ceb3a100ed0ad5f3238b5022d9d64353a1cc31e/code-insider-x64-1610342919.tar.gz";
      sha256 = "1bpgh8g0aispsnnasdidvcjriglfb2g6isp0xcc2h9ydwj17dvd4";
    };
  }
)
