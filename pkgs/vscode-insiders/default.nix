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
    version = "1760679998";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ec8586ef251f560f4deaaa205d67bc32213b5055/code-insider-x64-1760679998.tar.gz";
      sha256 = "1r04vsjhvc3r1b3l10igr9zcy8is1g7ysr88r8b10l1zm504p62j";
    };
  }
)
