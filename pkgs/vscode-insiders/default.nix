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
    version = "1712900988";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/50a6f4f200c5a33f47997eb6a8966e50cf219e21/code-insider-x64-1712900988.tar.gz";
      sha256 = "08qm49djfxakc74s7rgl5fj70ailiyzwgsbz9mfn6511jjrrznbc";
    };
  }
)
