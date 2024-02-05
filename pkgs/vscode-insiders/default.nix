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
    version = "1707112017";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ec291c126878742ad640055ce604a58129cd088c/code-insider-x64-1707112017.tar.gz";
      sha256 = "18k8ahkmp3rwj2y585v060yxjf8p687kalb27s3rs912r3g1ywzc";
    };
  }
)
