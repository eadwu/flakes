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
    version = "1761145901";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e7bc1917139599733c87796448ec33591045852e/code-insider-x64-1761145901.tar.gz";
      sha256 = "0gx1jbj55k9kkn2n4pwp6zdq1qw7qh1ayap624r42985q9id8303";
    };
  }
)
