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
    version = "1743462500";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/04b99c90f4832235b2d15e193cb14fff8a76dba6/code-insider-x64-1743462500.tar.gz";
      sha256 = "160wvlhanzw654f0b05pgrcvx9c3wamzbgv9pfi55zpz9qjd1nhy";
    };
  }
)
