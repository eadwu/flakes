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
    version = "1730149050";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/912bb683695358a54ae0c670461738984cbb5b95/code-insider-x64-1730149050.tar.gz";
      sha256 = "1sx7362h6wqcfjx1vwhx45dcsrbi3ycbkqd77ankp3ahbp4ws06i";
    };
  }
)
