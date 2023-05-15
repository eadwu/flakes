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
    version = "1684132757";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9084e081d4e89ed8ab67fce340d573c4e1378939/code-insider-x64-1684132757.tar.gz";
      sha256 = "0hpal4h6bg3ahkwww7c8yhgf5a4akd557zdr80bfv6da0vwvzmvq";
    };
  }
)
