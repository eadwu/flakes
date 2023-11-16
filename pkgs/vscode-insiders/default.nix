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
    version = "1700112950";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/444e73750b99b11c3597a5f5d210d2b52257e377/code-insider-x64-1700112950.tar.gz";
      sha256 = "1ihrn7xa7fbf9b69as3nwyqn741w2kw429mx3k3hz64cf5ky8xmh";
    };
  }
)
