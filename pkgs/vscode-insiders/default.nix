{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596433936";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5696babbc1dce41788bae04b1a04ad35140bebfb/code-insider-1596433936.tar.gz";
      sha256 = "1x6a4yrlnnhipg8fhyqr9wqnkyrg44nz63nmr6y7s6bv8sjax259";
    };
  }
)
