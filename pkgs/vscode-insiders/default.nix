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
    version = "1677045117";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/7b6b6869e8f5b71b5e9cdbd3f590b10964f89607/code-insider-x64-1677045117.tar.gz";
      sha256 = "09qq194k7vqggzb7j7zr5p7m1mnnx9gsszpccxaaxsldprfdrizw";
    };
  }
)
