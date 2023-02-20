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
    version = "1676895232";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/78cb4eb690930964f4dcddde7c4828bdb5beaabd/code-insider-x64-1676895232.tar.gz";
      sha256 = "11ba44bn7cmpgkkcrhza58c9k6idw3nzsdbbi9f80masx0b2gxfd";
    };
  }
)
