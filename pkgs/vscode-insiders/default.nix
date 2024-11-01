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
    version = "1730482586";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/19fabc20e35c89915c772116503a079554166a3f/code-insider-x64-1730482586.tar.gz";
      sha256 = "1c9c99vz7sj1z18ij9cpxppxzbps733ajnlhrabdlm9si30svpi7";
    };
  }
)
