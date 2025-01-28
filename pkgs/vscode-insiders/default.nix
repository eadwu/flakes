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
    version = "1738043765";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7a3d738bbb52a0222cbd97277b07d93113b79139/code-insider-x64-1738043765.tar.gz";
      sha256 = "0gm6hrxffh2ckcpsza2x2bda5r07miy4d5snbsf7j22xn4flq6qx";
    };
  }
)
