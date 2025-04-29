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
    version = "1745904168";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ecbbe26188235072fbde7b6f4fd2a0bd6a7c9909/code-insider-x64-1745904168.tar.gz";
      sha256 = "1fii9gq5hnsmgscj9bdhj9azq4wjc96lrn7byrbyic0p2x1n2fxi";
    };
  }
)
