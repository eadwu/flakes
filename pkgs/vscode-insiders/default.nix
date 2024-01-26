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
    version = "1706238091";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/feff7c8a7e1c82320380f42d898a1e03051fefb7/code-insider-x64-1706238091.tar.gz";
      sha256 = "1xyl44wzl7yx09bghcza8vyqyczxs4nyglqbcbfqr80n03ghqdn7";
    };
  }
)
