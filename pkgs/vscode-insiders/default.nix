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
    version = "1710236617";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7c284ae0c4922abf0ce6763b0d73da7012c5fa75/code-insider-x64-1710236617.tar.gz";
      sha256 = "0yvmz0ids9n6amck60m5yf98hadk2d3zcs89yf38x4wcqlb1llss";
    };
  }
)
