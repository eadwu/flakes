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
    version = "1718171360";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/51d598183ea632c658c34e0a11da5706192a1b69/code-insider-x64-1718171360.tar.gz";
      sha256 = "1jky210ayrf86vqpgj24d8bs7qymrlw4qksvgjdya9bxc4ynn2rr";
    };
  }
)
