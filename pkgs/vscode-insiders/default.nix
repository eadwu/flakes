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
    version = "1761597447";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/00e7d11c2ef29538a0395dab7a5bf4be8719d790/code-insider-x64-1761597447.tar.gz";
      sha256 = "1761597447";
    };
  }
)
