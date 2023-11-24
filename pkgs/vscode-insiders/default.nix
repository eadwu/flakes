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
    version = "1700839274";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/eb56719ae7653bff54989385818ef39e1cd73d29/code-insider-x64-1700839274.tar.gz";
      sha256 = "1w5rcadsisz27pggi7ggpiwikhs3xsdjwcy3md8wnkcirjm1sycn";
    };
  }
)
