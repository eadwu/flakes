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
    version = "1701769808";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c46c2f120b96f1d538333b263e42d1f133a200f0/code-insider-x64-1701769808.tar.gz";
      sha256 = "02b8danx10blv9i1k7njgswdh20sxc5zlp7nk6rqdpjsj19l4zwz";
    };
  }
)
