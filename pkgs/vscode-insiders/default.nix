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
    version = "1731523141";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/db865c38f0f5fee1de1653b75dd66ec802d24a28/code-insider-x64-1731523141.tar.gz";
      sha256 = "0carswgm0z8cddarsy83na66a9yvm0hfnzsi84yvdwya85gwcnk8";
    };
  }
)
