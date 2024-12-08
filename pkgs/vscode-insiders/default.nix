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
    version = "1733676722";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b18e7a700033b39ed2c3975759b6327c8205f958/code-insider-x64-1733676722.tar.gz";
      sha256 = "0yvmwxv27dbdjz38yl1ja86qvqsazf56xwhzfi719phph8xz9rv1";
    };
  }
)
