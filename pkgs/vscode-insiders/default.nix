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
    version = "1744237645";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/459f974eb62bcecf3ffd36e35a6df3588c5d3614/code-insider-x64-1744237645.tar.gz";
      sha256 = "1asnjgbwfjyin4mifc31llwxl0llcyb5q5qb6p6z6n05dabb2vyx";
    };
  }
)
