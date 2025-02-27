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
    version = "1740638761";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9f415924dade46bde45a41f784c0b4b9063d3b43/code-insider-x64-1740638761.tar.gz";
      sha256 = "0sckxy9jkc4y1l0595hcfn220g5wd3q06cfr6nb2lwxmjlq38hy3";
    };
  }
)
