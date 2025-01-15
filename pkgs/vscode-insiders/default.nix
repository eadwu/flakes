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
    version = "1736896573";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/115baa15e7624f0709c1516441006c0f85017de9/code-insider-x64-1736896573.tar.gz";
      sha256 = "142m6bm6hd57nnvlgx0gya94zjhfjbkkk9ga3mnldhvv0qshzx7j";
    };
  }
)
