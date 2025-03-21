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
    version = "1742587352";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/dc289883be5d37d5d2b2f7d30926aa42a3123437/code-insider-x64-1742587352.tar.gz";
      sha256 = "1jwf8ailszvr1kp3d7bs4v8qwa3jglsryx722l2l091y3xjrkkmw";
    };
  }
)
