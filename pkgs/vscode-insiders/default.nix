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
    version = "1712253187";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b4378dfa1d3c37f1b38b1f897fdf33dc01e445d9/code-insider-x64-1712253187.tar.gz";
      sha256 = "1fwbbw79880rq6rvm42pxj3s0z760y09bkwlbarg41nh5hc0l228";
    };
  }
)
