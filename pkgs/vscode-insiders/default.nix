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
    version = "1729849588";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c0f27916ad81d8de78b62bd0aa0eab3f8cd99178/code-insider-x64-1729849588.tar.gz";
      sha256 = "0fi9v85vfz2krzr8kgnivx7gn5qvj7xains715qydpcj4jkifyid";
    };
  }
)
