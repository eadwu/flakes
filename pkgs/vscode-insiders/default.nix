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
    version = "1734507337";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cf2ebd91b8e42e3bc5ab0e85e3323c886a977ffe/code-insider-x64-1734507337.tar.gz";
      sha256 = "098vnmlwbyy07y4mbiqvgk6mgzjpx9cx02wk746pmc07p9v5qg6n";
    };
  }
)
