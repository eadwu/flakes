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
    version = "1734096209";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/21a129e8d0fbdfabcae2444b04a0e4c3912c6fe1/code-insider-x64-1734096209.tar.gz";
      sha256 = "146sxchr5aawmqbxmqc1k69rxkdgckqxjpawhndg3670s6x7an6m";
    };
  }
)
