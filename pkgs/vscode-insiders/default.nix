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
    version = "1736506030";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f80816ab8e21c65ed7f1f7e08ccdbffae63610c6/code-insider-x64-1736506030.tar.gz";
      sha256 = "1l39wckqdrnr9wiw4m36wyzda4y156b0ddrjx7i91iqca2ly9sis";
    };
  }
)
