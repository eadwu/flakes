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
    version = "1726724734";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8d1bb84a183d8a4eb74c12ec11c0c5080a548547/code-insider-x64-1726724734.tar.gz";
      sha256 = "1qb3wsv6s610ij6z4p5n5nsmjrpm3alq1c94ldpgayg2ijdq0mmk";
    };
  }
)
