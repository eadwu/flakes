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
    version = "1713851572";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/347777655976bbc8460f833449592dd0a9a8f340/code-insider-x64-1713851572.tar.gz";
      sha256 = "10lk56cwy6nkw6jfy5f4dkxlw8g2810ikzmkrq81ycd9l9rgsi3q";
    };
  }
)
