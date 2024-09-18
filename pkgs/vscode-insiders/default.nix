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
    version = "1726638383";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/46c3cc46a159f9140637ef86de34b27144ee09e3/code-insider-x64-1726638383.tar.gz";
      sha256 = "18f87s22lb17q0gnmn4kzqydl79cjcl0x81caigf9d9js1x0g703";
    };
  }
)
