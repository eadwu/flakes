{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597220398";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/db40434f562994116e5b21c24015a2e40b2504e6/code-insider-1597220398.tar.gz";
      sha256 = "08bv73y0likjwhc4c7grl0ln7vhp91si8x72wiap5bjpnqsflvkq";
    };
  }
)
