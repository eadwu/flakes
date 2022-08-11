{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1660196869";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ef65ac1ba57f57f2a3961bfe94aa20481caca4c6/code-insider-x64-1660196869.tar.gz";
      sha256 = "05zyc1diynq1xmza14b28z1wd9pf1d5k8imlc4q66iic54rcajnd";
    };
  }
)
