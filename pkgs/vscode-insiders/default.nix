{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597388116";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd08768fd310d34cdd4423a53e5f3ca77340fea5/code-insider-1597388116.tar.gz";
      sha256 = "1aji5880gqlkpxpip46i5h9a1x0m47bw01jk6mgggd33cz1d472v";
    };
  }
)
