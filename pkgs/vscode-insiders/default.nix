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
    version = "1733786083";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/475acb4b9bdd77d4204224990bf288ed5bfe6b0e/code-insider-x64-1733786083.tar.gz";
      sha256 = "1vmkrfhzwhvnk4k8bj1qxngjb5xgamrvhfpaykz5lxwc59bg1lwa";
    };
  }
)
