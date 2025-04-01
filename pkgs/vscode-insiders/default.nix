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
    version = "1743518818";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cb9445f01be3bdd0a86e1634344ac3acd179a135/code-insider-x64-1743518818.tar.gz";
      sha256 = "15japk54fcxvlzwh0v2ym7bncg0lm7lxhdh6izmp5v8fdgglrkpm";
    };
  }
)
