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
    version = "1741929902";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2c7a0283817355c81e1b106f34d911762950a4d9/code-insider-x64-1741929902.tar.gz";
      sha256 = "10gxy0dyaj10bhmj80mp93ydfa1fxx4acnpn0m7c7ivj252m4kia";
    };
  }
)
