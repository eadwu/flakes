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
    version = "1725947133";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8b7eb51f54d7e1492d9baf70454ab6547a4ff9df/code-insider-x64-1725947133.tar.gz";
      sha256 = "15p875hx4xm7ni0v3wlr59bznzsgn1gvbkfrlszbmf7pz4qpl0dl";
    };
  }
)
