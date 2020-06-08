{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591655279";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9f89da69154ac6c99dfa7c82986e2df95b7bbe0b/code-insider-1591655279.tar.gz";
      sha256 = "1pf1pqlrk8j5za5avdx2ykfrg343m6z4mjwcqc48jg9jbf6h2pa4";
    };
  }
)
