{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603317107";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f4e5221ca7414d39a4d509a2825fd89143531148/code-insider-x64-1603317107.tar.gz";
      sha256 = "06rrglw0z0iqn1f8ah60l81xly8r2fkax97b4xq0x9y12wzjr42s";
    };
  }
)
