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
    version = "1721930093";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3b9aee0a96e6a812963418b08316c175e1386d16/code-insider-x64-1721930093.tar.gz";
      sha256 = "0mhfxkchngj51dzj4zlx9kmsjky5p56n9rpm8s27cvchqn7wzc2g";
    };
  }
)
