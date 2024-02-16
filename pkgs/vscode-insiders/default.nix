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
    version = "1708101203";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/00124e9e5830e3efc897db71c781899f8a676295/code-insider-x64-1708101203.tar.gz";
      sha256 = "0978f2q3r7b6rn7sydxgn3ks7dc2a351rbj3bgpmpg6j26q9crxa";
    };
  }
)
