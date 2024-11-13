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
    version = "1731476900";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/399779942db4d7ab1bd6f6ae976482d0020f10ca/code-insider-x64-1731476900.tar.gz";
      sha256 = "1f4vyddxjjr15i18dfacvymv9hqaa4zng7pq3ycnayah17jg0dhm";
    };
  }
)
