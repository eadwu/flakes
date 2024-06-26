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
    version = "1719396814";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0354163c1c66b950b0762364f5b4cd37937b624a/code-insider-x64-1719396814.tar.gz";
      sha256 = "0hmzrp0vbcilk2kmjq8an2qgls3y36kizmixv7q7gcvgnm0vpnv4";
    };
  }
)
