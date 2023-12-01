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
    version = "1701440368";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7caa3f698d26f7929822064baa1f3b23e7955c7d/code-insider-x64-1701440368.tar.gz";
      sha256 = "0h3nd4mn0p2y3ypp18jyzlyk8iz9i1x4sw88syfg34v7bhdch9y4";
    };
  }
)
