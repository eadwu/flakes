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
    version = "1729536592";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7cdb7ee9df511ac3b6586be865219f49ed858d8b/code-insider-x64-1729536592.tar.gz";
      sha256 = "0xbq1gbd1hp7az74ck9mrxrpf3sgwrykiv2h0grmxdn1f7li0gsn";
    };
  }
)
