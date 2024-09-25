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
    version = "1727243173";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/be2747e47e127ec674148b78dd9556c6317d18bd/code-insider-x64-1727243173.tar.gz";
      sha256 = "1y30k2dl5bm13vkkrnn6g30p3qrjkqkvzgshhwv4swbhamx8js5i";
    };
  }
)
