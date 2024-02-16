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
    version = "1708063449";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d84c946d27b649d614319c796911871320befd42/code-insider-x64-1708063449.tar.gz";
      sha256 = "0wi1d3lxh3a0wd24b4708jc30la3ny6mgprqi6y0914rwy4h69f7";
    };
  }
)
