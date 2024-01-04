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
    version = "1704346594";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d8a75eacf7c70e7327a460a8224dec14a65e1e27/code-insider-x64-1704346594.tar.gz";
      sha256 = "1i88y8zmlck0735c9a7j7rzpmdsf0xza97a47j654whq8vjwvr0s";
    };
  }
)
