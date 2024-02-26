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
    version = "1708957949";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e73419bef379f7956f024557cbf40bd3755a0645/code-insider-x64-1708957949.tar.gz";
      sha256 = "05r6f2cyyz3jxg7p58w34nqihx566y7l1mfrp3np4iwamilpxm85";
    };
  }
)
