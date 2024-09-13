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
    version = "1726206360";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f4746c94726e157c9b6534f1355d163ca4efcb38/code-insider-x64-1726206360.tar.gz";
      sha256 = "0ybp14p12inxxa9ia501v2g2djdnd8cj482g3q4g1h01aaxv9fqv";
    };
  }
)
