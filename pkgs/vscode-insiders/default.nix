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
    version = "1721050728";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/01eef174c20a0c9ce7d49db93d9dade6c684f66e/code-insider-x64-1721050728.tar.gz";
      sha256 = "107h1dk4yccyh4mgds3dzfb3kp1h59bhlsw31554spky44yngsgp";
    };
  }
)
