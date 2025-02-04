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
    version = "1738626129";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e72728b5e8fd701287d993699f2f667a2dcad3f3/code-insider-x64-1738626129.tar.gz";
      sha256 = "1q543mma79aldvv0mdq31s418xqi67ac16j8g62dkn6bd7wdpc19";
    };
  }
)
