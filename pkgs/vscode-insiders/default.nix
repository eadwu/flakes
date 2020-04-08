{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586296904";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2aae1f26c72891c399f860409176fe435a154b13/code-insider-1586296904.tar.gz";
      sha256 = "08qwwq16y161936ri58ycxiam4v6pza4r56i1fyl1xmnnv82xj7l";
    };
  }
)
