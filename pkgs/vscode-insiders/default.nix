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
    version = "1716788901";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fd11ed87fdf1f8e46575e027644406f51f0666f6/code-insider-x64-1716788901.tar.gz";
      sha256 = "1235wngij02dazqf4yyayyrbjna5n9vgfn86xyya32fm2asqakpf";
    };
  }
)
