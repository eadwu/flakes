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
    version = "1701369433";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/92772dcc29bd74108ab61ba9da5ad1f5154639ff/code-insider-x64-1701369433.tar.gz";
      sha256 = "0s45xa2xh9k1q6mmnnk49r4975zc3wfjxjh7lrg23spnl61s9f7i";
    };
  }
)
