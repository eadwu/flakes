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
    version = "1736833731";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c594d55bae90276d174cea4ddf2901694d4ebb3e/code-insider-x64-1736833731.tar.gz";
      sha256 = "1nj174fbxm2ibxj22k1dzfjrf27yrxmwmk4g9dg0lmazhxmlafy3";
    };
  }
)
