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
    version = "1725904694";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/dc9412125d4e0a480593962ae2687e74e64af728/code-insider-x64-1725904694.tar.gz";
      sha256 = "1ykhlgf564fsk19y9m04kcbkmy10vinwpdrjsqd0mzvxhrw230az";
    };
  }
)
