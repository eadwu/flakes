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
    version = "1709704051";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ea142b5ccdcb797b1de6b1a46fecbf25dea2e229/code-insider-x64-1709704051.tar.gz";
      sha256 = "17s2p1ygn69jj1hcr8flgq0r7mrzb8xfhs1pi1jszmk2p8sx7byp";
    };
  }
)
