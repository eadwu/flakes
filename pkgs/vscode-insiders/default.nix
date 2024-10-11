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
    version = "1728674898";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4b4bf8f594077c3dc53ef70518531f64ed566194/code-insider-x64-1728674898.tar.gz";
      sha256 = "00xsi7qwpgrkiq72zg2ibpgni6r0bpjjkva7f27mzfcjlgz2jdm3";
    };
  }
)
