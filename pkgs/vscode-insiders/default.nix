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
    version = "1747412452";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2d6afddc470bf44f7e60fb5b6e6fdd08e771409b/code-insider-x64-1747412452.tar.gz";
      sha256 = "1gbwaz66hdlda3wb8v6iwnrzj6nfxjfss23n9zz3c7zwggg1fq77";
    };
  }
)
