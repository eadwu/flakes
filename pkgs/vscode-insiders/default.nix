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
    version = "1731044783";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4ad5865e8d95df60baa9c22291f2be035de3d538/code-insider-x64-1731044783.tar.gz";
      sha256 = "0z7mif35w6jahp2slf6403mfvny5ih4j80fpqmv6dmdf1754psbc";
    };
  }
)
