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
    version = "1714982795";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ccba2fc85c14bedeef5a72b7ebc0bde9b0e91948/code-insider-x64-1714982795.tar.gz";
      sha256 = "0pzsz5dm0cjcf6bc6c5v4kqiw1pnqqqs967fy3g8hxzmxcdcg5xa";
    };
  }
)
