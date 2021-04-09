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
    version = "1617946093";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/08c3c088ba8e0dfaf9b6c9df64e33d6176070752/code-insider-x64-1617946093.tar.gz";
      sha256 = "08hgzxbqsdsqlw8891fnh6lh8c0mg5021lyih3j6n6mi76c073ss";
    };
  }
)
