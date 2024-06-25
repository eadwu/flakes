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
    version = "1719307066";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b36286db80c68b7fdc6bfee2f55e0208c8833dfc/code-insider-x64-1719307066.tar.gz";
      sha256 = "1qs1yh51jxm67x9wp30j2c2r2sy7m487cggzr4gp6q9av8apylj9";
    };
  }
)
