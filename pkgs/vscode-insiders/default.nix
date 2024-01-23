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
    version = "1705990311";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/800e60abdfb1675a59520bac6a9473bc380d49ea/code-insider-x64-1705990311.tar.gz";
      sha256 = "04w8p3fkxaqscdbaf779hk9ja0nkqva9wcwc8xm24cqlf6gsqfvv";
    };
  }
)
