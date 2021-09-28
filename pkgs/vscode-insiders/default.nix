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
    version = "1632807712";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/214ac689ca9874a8a4be386f73d5cb60e15af25e/code-insider-x64-1632807712.tar.gz";
      sha256 = "0b03vkpd502jn054rcgmmf2n2xbbs03qhaklbzwsk44yf8zysify";
    };
  }
)
