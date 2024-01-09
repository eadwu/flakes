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
    version = "1704778519";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7452aaa51d440d39c4e6ab61970b290b8600f52f/code-insider-x64-1704778519.tar.gz";
      sha256 = "04g2522i38invidx328fmfn4cbna0g1w7agvx67v5vhvzv2zqqwa";
    };
  }
)
