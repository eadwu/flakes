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
    version = "1730732532";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/231d37338a58ff22c223a7ed7d4c1e7142c513d2/code-insider-x64-1730732532.tar.gz";
      sha256 = "0c3jlsb72x827ggllpl7dnbj125ckwc03amixf7z63qcishqhc00";
    };
  }
)
