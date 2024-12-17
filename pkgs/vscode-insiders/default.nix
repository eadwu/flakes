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
    version = "1734414671";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/95386dec787946547812c7ee9d38cba19d6a6398/code-insider-x64-1734414671.tar.gz";
      sha256 = "1n17pcy8k9l2g0z3v46agbdq0v9lf13fbkrrfbmb8d1vp9cxi5xq";
    };
  }
)
