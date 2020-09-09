{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599644035";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e790b931385d72cf5669fcefc51cdf65990efa5d/code-insider-1599644035.tar.gz";
      sha256 = "0r0pzv6hz6y9vaqn790y5qsqlvc2x4gf3ybfpdydbgnca1dahp7x";
    };
  }
)
