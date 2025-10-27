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
    version = "1761498734";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ddb5b646abd33712d820e8e6830e5fc49abb2572/code-insider-x64-1761498734.tar.gz";
      sha256 = "01zmnd5i3p8z0ryy5rfpzrvav66xfvkfpgvhbwjy4dlds5svk2w9";
    };
  }
)
