{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589348834";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/d0a3feff23c47876412f5e289b935aabf02c71ae/code-insider-1589348834.tar.gz";
        sha256 = "1z8cibjhraqs22cg6hhfa8dmssxg3s7h8h4d91ygimalc8mkysji";
      };
    }
  )
