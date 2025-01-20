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
    version = "1737352333";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3d0aeb47a2ecfde9ff5141470b30c36d41c321d9/code-insider-x64-1737352333.tar.gz";
      sha256 = "0h72q9nqm41xpda9gif5x7cfic331dzpfada2zq8mxwf51wc83bp";
    };
  }
)
