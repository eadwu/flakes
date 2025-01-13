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
    version = "1736765177";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/69d97b0773575a75736850370918e1171cfde5c6/code-insider-x64-1736765177.tar.gz";
      sha256 = "1grz31skpcls3ng1n20fibbj5c0bc0ql93nplcfigk528rzp793n";
    };
  }
)
