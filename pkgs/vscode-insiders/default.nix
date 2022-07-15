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
    version = "1657863942";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1cd90cceddf3c413673963ab6f154d2ff294b17c/code-insider-x64-1657863942.tar.gz";
      sha256 = "02cy0a4w5pl07lqxq3n62r7dbwkipac3f21z8xmfnqklpqdrzga0";
    };
  }
)
