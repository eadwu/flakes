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
    version = "1743547963";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8222926219175706ebc0af3c03db588d2bbe185a/code-insider-x64-1743547963.tar.gz";
      sha256 = "1ka4zr1zaplgjs8xidapzzzxg29paryj64acspmrcjk7r7mlbv8m";
    };
  }
)
