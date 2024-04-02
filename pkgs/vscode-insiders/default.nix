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
    version = "1712060988";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ae59067554575afaba07640320a26435c8e05175/code-insider-x64-1712060988.tar.gz";
      sha256 = "1xvfg6qmjvj8vy3s43qcm7s1mhmzzzkyca10449ix9y43jwvkbdx";
    };
  }
)
