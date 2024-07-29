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
    version = "1722266009";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/73c35330d03213d41829d35415cc7cb1df455689/code-insider-x64-1722266009.tar.gz";
      sha256 = "1cvwd7394a4k8gm2g07fwcxr38lp7djvnvddhjz16q1vx7zgqiic";
    };
  }
)
