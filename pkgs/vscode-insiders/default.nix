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
    version = "1761222698";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/08221e77c3e6f1eb810eb0219d3abe72caf1b37e/code-insider-x64-1761222698.tar.gz";
      sha256 = "190im4qaabxkhmjwqczl7x3c6lcfr17pn8xk7fash8sc9nhbfq7w";
    };
  }
)
