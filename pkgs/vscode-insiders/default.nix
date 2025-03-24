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
    version = "1742793973";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/299b150bd5c0227099c9b03dc56c5073ec0ff5e2/code-insider-x64-1742793973.tar.gz";
      sha256 = "0w8krwdzgxjc59j79y4v96zgb2awkbaq01msi8i9iszb5rb9z41s";
    };
  }
)
