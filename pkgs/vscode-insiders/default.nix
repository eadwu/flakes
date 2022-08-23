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
    version = "1661233525";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd6107301dc9a6200bd8d4f64a9b198438b3f1d6/code-insider-x64-1661233525.tar.gz";
      sha256 = "066j1f0g4bhasaapskrrsa1mjz5jlidz792pr7cv6gdpq838h62m";
    };
  }
)
