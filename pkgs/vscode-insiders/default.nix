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
    version = "1720626334";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c0cdcac0616454584ec7611c34337efa046b6965/code-insider-x64-1720626334.tar.gz";
      sha256 = "19g2i5wb8m7l3rfdj04lfbidzxk4chh98ygjkvlmn4zidza03b55";
    };
  }
)
