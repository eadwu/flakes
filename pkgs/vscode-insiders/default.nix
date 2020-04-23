{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587622013";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d342048538c28d54afd1c6beea03f3a89af04359/code-insider-1587622013.tar.gz";
      sha256 = "1wgpy8s2hnxnv51j8irmf8ka5j8g3mz9dss06wbvp6vdsqjlyg67";
    };
  }
)
