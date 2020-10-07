{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602033279";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/93c2f0fbf16c5a4b10e4d5f89737d9c2c25488a3/code-insider-x64-1602033279.tar.gz";
      sha256 = "15m7a2aw9kbv0nvb1apmh4wsy5p1vwqwdq67q6gkzzhxzfcxnfr8";
    };
  }
)
