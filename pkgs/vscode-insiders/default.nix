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
    version = "1742966545";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/87a35e10699cb846c2c72eeb3a698bf56dafd701/code-insider-x64-1742966545.tar.gz";
      sha256 = "1nvvh5933gf44qzssf0r178mpa129icygixl3k5cbs9ip8m0ssfh";
    };
  }
)
