{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591013144";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2c1871d538c64df71af4902deba47d7fa4b53f27/code-insider-1591013144.tar.gz";
      sha256 = "19wiw1srbzicpv27yaf5rc6gm87npjsi3hadzh4cdaxdijxrfnpi";
    };
  }
)
