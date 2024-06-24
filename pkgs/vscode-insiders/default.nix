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
    version = "1719208288";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/524d1ecedd33104381e7e0a6715c13813128f89c/code-insider-x64-1719208288.tar.gz";
      sha256 = "0x2y66g70wfdn803axvpm3vdwbdz764h3rs9zg9wpgsqjl9r5fns";
    };
  }
)
