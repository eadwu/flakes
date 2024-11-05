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
    version = "1730785597";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f87f8a56f3a30238076bee3db39c245bd69be264/code-insider-x64-1730785597.tar.gz";
      sha256 = "0fzcl5ycm38afz1bw53byvvbpn2vh4g9irmn36a2s90l6vqv46z2";
    };
  }
)
