{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587016594";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6e9a34c0de4181a99f11e106733ee3e8c9db79f1/code-insider-1587016594.tar.gz";
      sha256 = "1irfwxydn41c5dp1l48mkbm2fwg0br7rf7dw3hqjz7zp13010cy5";
    };
  }
)
