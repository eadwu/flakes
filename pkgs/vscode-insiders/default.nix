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
    version = "1732600146";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2dd0bca3954d4c03c427d6b447205b68817bd000/code-insider-x64-1732600146.tar.gz";
      sha256 = "0aixjmykb6g52q72nwbqj4wsfzcip1cylyjkxnqbpx4fibvf3hg5";
    };
  }
)
