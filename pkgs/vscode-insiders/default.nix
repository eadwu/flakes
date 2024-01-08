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
    version = "1704692196";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4caba0473af34a2b128cedc46f6b13316aae9226/code-insider-x64-1704692196.tar.gz";
      sha256 = "08xhk16n6cc3b3k062dzc9ihgcwlh7gv9lcdhxf8rhalrzmdcwgm";
    };
  }
)
