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
    version = "1734068994";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b425f4802fcbcccb11ad991208fa262c06255be3/code-insider-x64-1734068994.tar.gz";
      sha256 = "0q1sywykckzigdf1abj5vbyj7fd1sjc09q3lf897vx5vpmns9jrr";
    };
  }
)
