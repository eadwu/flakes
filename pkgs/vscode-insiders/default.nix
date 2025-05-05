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
    version = "1746228036";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/59f98786562ff0d034176d97cf2686fdd3e02502/code-insider-x64-1746228036.tar.gz";
      sha256 = "0wha9qzcqfyb4kmn2rd5bblhak3vc9fx630an9zmr7sfiq7w9fkl";
    };
  }
)
