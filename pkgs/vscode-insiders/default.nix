{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600235557";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9e505675670d65138405321a60b0df4ddec28799/code-insider-x64-1600235557.tar.gz";
      sha256 = "01i2gsdc3gxf4jxml4amdp4kwvkzd43i3gvciz8nwyj54m44iyns";
    };
  }
)
