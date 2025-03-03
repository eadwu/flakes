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
    version = "1740987991";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c7a5cfe483a5228fbbd3bd8e8a3f8d8954f8e71c/code-insider-x64-1740987991.tar.gz";
      sha256 = "0qdz91nll79pws6j2yvi4c4lr0vh2k6z146bim7swp4fkn336jn8";
    };
  }
)
