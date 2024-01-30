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
    version = "1706586962";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9c5eabb378c9d18a0f712d1f22fe63df3f933ade/code-insider-x64-1706586962.tar.gz";
      sha256 = "1sh01rgm1r9s835rc6h34cm1shzb7bwsj33r17asrj51zblf8km5";
    };
  }
)
