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
    version = "1716961876";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fc8762e773c35d4e52e8a7375704af2e24698e5d/code-insider-x64-1716961876.tar.gz";
      sha256 = "02dhh6camwyy8xy4zql1k1d7b7hwawx2bdns9y2xvvfjsfzpjihq";
    };
  }
)
