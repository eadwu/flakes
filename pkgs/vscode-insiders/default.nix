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
    version = "1679569759";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6fe3014566312d1e2a41925c78201b8e8490fe77/code-insider-x64-1679569759.tar.gz";
      sha256 = "17i7r29nyr942ahpl4xzrirb38hq52xdkdlfab3a4hgzmw2ywfx8";
    };
  }
)
