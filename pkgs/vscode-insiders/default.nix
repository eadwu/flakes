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
    version = "1738130116";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3250a26dfecc06defce495f1e16b80681974c62b/code-insider-x64-1738130116.tar.gz";
      sha256 = "0haa3cwk8b2n1j46xlig7kycigq5d5p4b3iq63ffknz60y5kbf7j";
    };
  }
)
