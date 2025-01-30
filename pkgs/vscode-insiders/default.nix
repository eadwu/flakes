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
    version = "1738216639";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/63c0355e5bc04b124b8600ce42fe30c73b7a5a5e/code-insider-x64-1738216639.tar.gz";
      sha256 = "0rgf38akxxk7kw9s82b9x0c7mks7assj79cqg3g8c622bsxj61mx";
    };
  }
)
