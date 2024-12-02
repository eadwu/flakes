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
    version = "1733118736";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2ed1e9b48c8f55e1b92322a992c6c12b1e86e444/code-insider-x64-1733118736.tar.gz";
      sha256 = "143k9mqv2q241mjq109n4ga3spkyzbsryfn69332c3rk7m747afs";
    };
  }
)
