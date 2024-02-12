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
    version = "1707716823";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/01f46bb5357baa8f3b9da690e1e34eb78e09a72b/code-insider-x64-1707716823.tar.gz";
      sha256 = "1xm50vzlimx490pw9iwhqcsxhdssni9sk0h1q7zxmch5nh790kq4";
    };
  }
)
