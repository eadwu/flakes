{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600770437";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e80644fd7da69295b18e7f79403720dd1b155507/code-insider-x64-1600770437.tar.gz";
      sha256 = "0zva3ny61ijjsbsfg3mqdxa7l1p9cgf820f7jiabiqkylb6iqrys";
    };
  }
)
