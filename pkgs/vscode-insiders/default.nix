{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591724889";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a5d1cc28bb5da32ec67e86cc50f84c67cc690321/code-insider-1591724889.tar.gz";
      sha256 = "0w7bsh29m78wh4dvrwcych7p5jx3nvkgnih651rz57gmh2ckgajm";
    };
  }
)
