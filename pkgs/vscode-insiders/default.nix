{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602222655";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f5d3ba4d61146b78f0c75c82f3f85232d3409bc1/code-insider-x64-1602222655.tar.gz";
      sha256 = "1wv5fahij8vikbvq36x9sgrnq001r7cwjhvqqj10gax1ykwdkc4h";
    };
  }
)
