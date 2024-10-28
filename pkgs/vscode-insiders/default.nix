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
    version = "1730127569";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d7c7d5bd66efeaebded9fada08500da3816d80cf/code-insider-x64-1730127569.tar.gz";
      sha256 = "00a1n8c4d19jjg3y30px64b294rg4kvamwy6y082xammfpah008h";
    };
  }
)
