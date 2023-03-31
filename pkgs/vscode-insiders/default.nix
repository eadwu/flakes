{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1680228829";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f31dffc7f9b93a1cdef21243ec30dea7d489a615/code-insider-x64-1680228829.tar.gz";
      sha256 = "1ks44850c2ss6rh22lqyn6g2qk6c2f5yyva68bq52rmvrg45b5h9";
    };
  }
)
