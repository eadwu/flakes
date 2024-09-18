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
    version = "1726654028";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4f485cf59847506bc1ba2aaab127d31dcbe2c9dc/code-insider-x64-1726654028.tar.gz";
      sha256 = "0555zbdfqlwwgc6mkskxnfjmzrkb05hfnkj0nv6fx2siz0d91da9";
    };
  }
)
