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
    version = "1703050604";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9621add46007f7a1ab37d1fce9bcdcecca62aeb0/code-insider-x64-1703050604.tar.gz";
      sha256 = "0g8hifd2f8pr199ipq8n57xmbayrmywfzr0af5zxjjkv9wrf5fl8";
    };
  }
)
