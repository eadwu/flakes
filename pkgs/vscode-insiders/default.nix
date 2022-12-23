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
    version = "1671774870";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6ed4d436a9b6ae131732f4e2a723868231f4473a/code-insider-x64-1671774870.tar.gz";
      sha256 = "1h7fy825whk16d61rpd4yk7qp0007kb1chazk4j696wbyv7aipkd";
    };
  }
)
