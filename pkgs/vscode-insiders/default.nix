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
    version = "1724824968";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d1388fd24fc0acf17ae1f759e85c1acf559ed759/code-insider-x64-1724824968.tar.gz";
      sha256 = "1d3lyfh7adz90804fkzn6k716648f13g5g76b680m9xsqvw0ihi2";
    };
  }
)
