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
    version = "1761240160";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b409152750e821c13dbb73423b41d7d9303de1a5/code-insider-x64-1761240160.tar.gz";
      sha256 = "0mc2ibqwqbb9lra5iqm3pqv3x1jb0m37r3liljrv8z7n10ks6jag";
    };
  }
)
