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
    version = "1761236135";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5e4cf386d9c3d354551e4ce7267e40278fa2bccc/code-insider-x64-1761236135.tar.gz";
      sha256 = "1rmkcmlbi7bkq54h5lbw87fqdc18h5rg680af03cj58mf659z9cg";
    };
  }
)
