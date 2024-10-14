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
    version = "1728930979";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/23da1029cdc856e5e76b73e6ee05453aea8474b3/code-insider-x64-1728930979.tar.gz";
      sha256 = "1vydxzhwdig98w9nhj7yazl7yf1rnv04n0b27ps9b1vm129bc8ya";
    };
  }
)
