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
    version = "1734328142";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ce50bd4876af457f64d83cfd956bc916535285f4/code-insider-x64-1734328142.tar.gz";
      sha256 = "1x7x5yh049a272x8l6inp2xjck4aacb8rp2hkcp7cab1yxk3qnqi";
    };
  }
)
