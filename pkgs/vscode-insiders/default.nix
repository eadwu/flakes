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
    version = "1729882236";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/360bf09ae640d0faff2972106bfafa0dee7364bf/code-insider-x64-1729882236.tar.gz";
      sha256 = "0a0wjrgidwimi3b8c1yikm0j5zhqdb13yh7zx1mwmdi8a8kx9y3j";
    };
  }
)
