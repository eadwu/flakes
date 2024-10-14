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
    version = "1728884775";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6cf71eaab2600e2e1db3642aea3ad91aa6be3f7f/code-insider-x64-1728884775.tar.gz";
      sha256 = "1ka9smlx2xjxcclkb4r5biyajr1ihg677b5xv7szhmz5lb2jvjmw";
    };
  }
)
