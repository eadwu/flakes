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
    version = "1729057688";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8965e51174c237ba2a7c4f7be991ffa0526892cb/code-insider-x64-1729057688.tar.gz";
      sha256 = "0bb8lak4lvakfgjq8bm6305q5f1971vj1czsbmv1w09lr8dfx2a5";
    };
  }
)
