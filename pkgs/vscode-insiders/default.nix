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
    version = "1701813982";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6d33f515e8cbe8c134c75f81a6764c9a2bdde620/code-insider-x64-1701813982.tar.gz";
      sha256 = "0kk8488i6wkmg4vayav2hlq8gl7z6kk0dwcjxy5mi52ab1l3qpnj";
    };
  }
)
