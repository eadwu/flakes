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
    version = "1730872187";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/76c27ee9ddaf998e5129418b5aba2af1d569cf50/code-insider-x64-1730872187.tar.gz";
      sha256 = "1c296xdqpcz7zjg5wzw2vpnqk3ppa2cw1m2jhnads395w1sdb6d8";
    };
  }
)
