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
    version = "1709885615";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6c19c003574b02afc604c0c1c471b1441b33a3d3/code-insider-x64-1709885615.tar.gz";
      sha256 = "1j40x1qvkggfz2hhjgdh2k3c4mn10rznd06z894vmi9v8585v8i5";
    };
  }
)
