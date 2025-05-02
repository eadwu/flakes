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
    version = "1746163415";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/47ea00afe6b2b1cb01492d7e7d466989f5727894/code-insider-x64-1746163415.tar.gz";
      sha256 = "00ax11p1craqrz3vx24xzkis7375avkyd4i74gbc9llg2mks60cs";
    };
  }
)
