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
    version = "1732658437";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ba849fc973f4d6f7421a9ef5d0433aa879ae3c7d/code-insider-x64-1732658437.tar.gz";
      sha256 = "1gqwv7mhf0n53qcgk8bkdjps3ha02gf7pv27shdgb4gjg7ryk0al";
    };
  }
)
