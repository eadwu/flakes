{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598334308";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8ba70d8bdc3a10e3143cc4a131f333263bc48eef/code-insider-1598334308.tar.gz";
      sha256 = "02rp449pq1d8j8zz6m2pgycf5142zbg9ms7sa63m6lr7xamk00jn";
    };
  }
)
