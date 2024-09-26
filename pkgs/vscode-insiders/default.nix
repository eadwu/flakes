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
    version = "1727329593";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c43f508b732d24b0c4732de9db2b38b4c5b88b8a/code-insider-x64-1727329593.tar.gz";
      sha256 = "1kjl8x8hx2mnaph1jcrgmaqlb3bkc8s482pigmbyh0iqrkdq3jrs";
    };
  }
)
