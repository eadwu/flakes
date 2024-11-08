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
    version = "1731062467";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4a98be2738be4ad8647feb52d1e6845e06515dea/code-insider-x64-1731062467.tar.gz";
      sha256 = "02rdilf9m828wda68kyn0xgq78rwlmsdnf8xdvcdqkzvimw2y375";
    };
  }
)
