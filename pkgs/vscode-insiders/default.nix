{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598248052";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f57a418b019926b38d2e6949265c33002a8f6f6b/code-insider-1598248052.tar.gz";
      sha256 = "12w8zk8g39lh9my637bilj1y13yj2i261ish6yv45xqbss9qgh1l";
    };
  }
)
