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
    version = "1718359816";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0da59bdde2339d6ba632524dc8f3fb6f4b8a2bcb/code-insider-x64-1718359816.tar.gz";
      sha256 = "1gajv1szfgkqw7kc7n6vkc50nxnnzny0a5dys7kw27kk50naqqq7";
    };
  }
)
