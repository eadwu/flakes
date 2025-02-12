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
    version = "1739339807";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8cc3b69feaf3b79f333256a511e84f20cf27c24f/code-insider-x64-1739339807.tar.gz";
      sha256 = "1qkvklpkc2nvlac5krh7nqgcpj4zk5zwd9vi9h6ncszgm95drv3c";
    };
  }
)
