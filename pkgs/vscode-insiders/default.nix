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
    version = "1723614717";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b45f04309feede3182ac4a7b945df1e64663a222/code-insider-x64-1723614717.tar.gz";
      sha256 = "10jywx0ifll9zc9g1b55af8ajvk668bb5qs0zama7kfjhwdil750";
    };
  }
)
