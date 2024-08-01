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
    version = "1722461652";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b1c0a14de1414fcdaa400695b4db1c0799bc3124/code-insider-x64-1722461652.tar.gz";
      sha256 = "14x82qm3kbdp3b6kr25vkwfcfadx62895csm4lbp22g94kk2n6x6";
    };
  }
)
