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
    version = "1746564894";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/abe4aab6a7ddb38f4a83c38b53cb4f28dddf0c97/code-insider-x64-1746564894.tar.gz";
      sha256 = "1wlh2v8wj2wscz0x408ggjfjrqpdrfph9hb0is3f896k1hc79jq4";
    };
  }
)
