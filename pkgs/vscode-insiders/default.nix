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
    version = "1741116515";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6609ac3d66f4eade5cf376d1cb76f13985724bcb/code-insider-x64-1741116515.tar.gz";
      sha256 = "1gmpqnbb659kjvjpc017vw77lwcfsc6zslbfkdk7xyzr9jahs7my";
    };
  }
)
