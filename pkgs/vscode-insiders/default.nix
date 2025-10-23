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
    version = "1761196521";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f1bd9ba91544a129a5ad74444e51e53293892310/code-insider-x64-1761196521.tar.gz";
      sha256 = "1brwkq6qb26sx58izbq8hvbppnnxn83kvkf62s4m05hn9n95ri5i";
    };
  }
)
