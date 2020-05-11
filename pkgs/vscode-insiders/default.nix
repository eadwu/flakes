{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588934742";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/161d93bb787df7c95f5a24f6ef83e28c93967bfa/code-insider-1588934742.tar.gz";
        sha256 = "0w2h1fs7srm6hxaa8jhbcpm383qfckc39k0k1rcbq7s09xzyk3lb";
      };
    }
  )
