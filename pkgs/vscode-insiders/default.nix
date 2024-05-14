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
    version = "1715665680";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bbc4ba1eff648ee542972589216f211b7a6a08f2/code-insider-x64-1715665680.tar.gz";
      sha256 = "1yla7vyxgc3m25ch3xly0kn0ipqaxj8y2g6ggnr1dsw99p1g8br1";
    };
  }
)
