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
    version = "1704951379";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a45edfc415d19852fa3c3e1cd255a02de9e016d2/code-insider-x64-1704951379.tar.gz";
      sha256 = "0shx8b5hbafb7kgp0wg8c5zihngv0bjlva6baqi90frzzjidh7vh";
    };
  }
)
