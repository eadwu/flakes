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
    version = "1710308924";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7107b38665e428a974c06b2c6e8f67a9a078aefd/code-insider-x64-1710308924.tar.gz";
      sha256 = "163y7xxni1ksz3xxislffclbd97sqwicbv873j54b6q76bwwwm6k";
    };
  }
)
