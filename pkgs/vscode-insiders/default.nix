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
    version = "1733377784";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6567c244f90af8e31d9250e8f9a757b58565649a/code-insider-x64-1733377784.tar.gz";
      sha256 = "1a6srsf1a4qw3lgvqdzjgs1mys9yxry2jn0x3pdlf3wnsigmh5d1";
    };
  }
)
