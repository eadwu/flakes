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
    version = "1613712620";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/192c817fd350bcbf3caecae22a45ec39bae78516/code-insider-x64-1613712620.tar.gz";
      sha256 = "1gwj55qvmjl21p7lh9nz1h6l8pl0n6b5piirkxxr84aswvkd644y";
    };
  }
)
