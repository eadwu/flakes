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
    version = "1737457861";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d9069970f94c133d4bb5d300e9f8d7f174843cd9/code-insider-x64-1737457861.tar.gz";
      sha256 = "0m79k77cg87yx18jgnsx9k9zk28hwlwcq1pvksw627zxn26v1mdl";
    };
  }
)
