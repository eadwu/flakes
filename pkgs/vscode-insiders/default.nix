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
    version = "1705475042";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/aed5f4d65d2dbfda2c98abd7eb371751016838ab/code-insider-x64-1705475042.tar.gz";
      sha256 = "1ri37s463q2lh1xcf36xmjcr37ck0h71zy9gfp10cwilyjfvrp2i";
    };
  }
)
