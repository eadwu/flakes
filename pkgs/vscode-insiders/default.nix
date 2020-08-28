{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598635379";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6384e3246884694cbc34eacc70281ada15e2c7f2/code-insider-1598635379.tar.gz";
      sha256 = "0l52ll77lbabyiq5pfswdjadfvczgz9x3xxcbipczvrmvayv23ph";
    };
  }
)
