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
    version = "1722002452";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4d17e85cfd911fb6b116e08a4d7c37cd725a966a/code-insider-x64-1722002452.tar.gz";
      sha256 = "100fkgzr0glbckc6ip6h1wv4v1p3mz1bngrqwz3vw2z8xvifkyxf";
    };
  }
)
