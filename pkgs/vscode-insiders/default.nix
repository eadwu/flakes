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
    version = "1714529034";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b58957e67ee1e712cebf466b995adf4c5307b2bd/code-insider-x64-1714529034.tar.gz";
      sha256 = "0ps6lss1x3f65r8lysahp94sfcgyxy3vg84xq6ymb3ml79jzi5rb";
    };
  }
)
