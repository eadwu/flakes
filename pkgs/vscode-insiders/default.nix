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
    version = "1709246729";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b148975cafa8f034592310659f3dc989b124685c/code-insider-x64-1709246729.tar.gz";
      sha256 = "04j8i7axwwckbkc7dj6kxzf37vkjam4nc2hjim906mzq79k35073";
    };
  }
)
