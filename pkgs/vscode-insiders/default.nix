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
    version = "1734526580";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6c2faf1c5db3a438360b44a9f7b83bafac8efa0b/code-insider-x64-1734526580.tar.gz";
      sha256 = "15p95sqmiwigc67px0nhcag07712xypzsxgvhlfvnb0ij96mfhj5";
    };
  }
)
