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
    version = "1724651384";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e81aceaa07bab1ccdc94deae04168c8bd062f0de/code-insider-x64-1724651384.tar.gz";
      sha256 = "1s8gmgby2z375mq753v6ssj7cldywm5b2j8al3c86c5klxk3lsvg";
    };
  }
)
