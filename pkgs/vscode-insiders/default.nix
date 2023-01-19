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
    version = "1674141794";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/5ae522f8563fe48b89470923f77a9732f96c0472/code-insider-x64-1674141794.tar.gz";
      sha256 = "1a36x0ddyg9mk2fv01s3fmpkl5ws7lgpdgjnm4ip8y1d7ym62j7z";
    };
  }
)
