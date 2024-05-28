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
    version = "1716929050";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/05634b5fcdc02792b7f4546d1e56d4b87b5b9296/code-insider-x64-1716929050.tar.gz";
      sha256 = "0ya94y8q1gvdl1lsmrgwf1483llzna2532zbccczrz31fv4x4jxq";
    };
  }
)
