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
    version = "1733472543";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c8f53ea748dcbbd12ff40d7f944e516d9cd36746/code-insider-x64-1733472543.tar.gz";
      sha256 = "0j4pd5526sidf7hg18rp6mpqi8giw1nf1z1k623ai0rr1d1dl0dp";
    };
  }
)
