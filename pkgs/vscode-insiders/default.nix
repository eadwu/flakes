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
    version = "1647236424";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3e5c7e2c570a729e664253baceaf443b69e82da6/code-insider-x64-1647236424.tar.gz";
      sha256 = "0jbnnzk3kaz1b7r21zp85q65a6cayhknrrnmjyzs1nlw5x59dfxp";
    };

    postPatch = "";
  }
)
