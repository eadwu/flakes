{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596121281";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/15ada625f20086007e2c4aa0d760234360cd648f/code-insider-1596121281.tar.gz";
      sha256 = "1402z02nh6b41p7dsi8gmkk4lhhkwp4jizvcxviakqkj8w7xlr39";
    };
  }
)
