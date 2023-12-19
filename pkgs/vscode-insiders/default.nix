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
    version = "1702964236";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a017b12b9caa3475675cfe6fda014fcf5af388c9/code-insider-x64-1702964236.tar.gz";
      sha256 = "00nij9fwvfmswykdhqaiswrf2iphj10qg1lhh47yjs8lnglgaqan";
    };
  }
)
