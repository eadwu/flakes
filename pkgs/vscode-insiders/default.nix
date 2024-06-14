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
    version = "1718344114";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3b80131054ea2b80002bfde213a41293b85e68de/code-insider-x64-1718344114.tar.gz";
      sha256 = "1fh1g4b5ycxhgm2ibizavzirsy0d7sidfr83jjibbhikjpyh62rv";
    };
  }
)
