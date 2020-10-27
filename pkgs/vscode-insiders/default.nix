{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603777760";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e5c0007ce0e9a3816679cba674d03376c03726e3/code-insider-x64-1603777760.tar.gz";
      sha256 = "1iqlpszbbqhav84yybrq5w4y5i8ph968if3g0afvs7rg2hzskrjy";
    };
  }
)
