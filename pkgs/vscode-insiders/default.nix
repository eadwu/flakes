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
    version = "1711751002";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d994aede3529f4d1af9eeaeb234d32fd936243e7/code-insider-x64-1711751002.tar.gz";
      sha256 = "13cm8y9cql7k5kpnzs6jffhy6kq2dj574kfn76nlnv0ls1ww8hwi";
    };
  }
)
