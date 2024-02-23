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
    version = "1708689502";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b8d6cdc09755c2fc8db77c179f10beb727846518/code-insider-x64-1708689502.tar.gz";
      sha256 = "1j193nrnjsfzfry5gwpv4yy8y6gmysg1yk0hw62qppbis7mmwvm2";
    };
  }
)
