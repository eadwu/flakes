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
    version = "1720417694";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3e283de567f5701a2be639bdacdac2c3cfdb088a/code-insider-x64-1720417694.tar.gz";
      sha256 = "1v48qwdfippvjz52fwwdw6fpr597j64jar55bz1y10gw1ybwwhnk";
    };
  }
)
