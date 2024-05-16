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
    version = "1715838544";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0cd8d6ac480bc5b4e2a2d7f1eb87eaff9f7d47e1/code-insider-x64-1715838544.tar.gz";
      sha256 = "0f77k9xnm93bmr6a5dvv6i8l1yhn46ab9zpglk7s31ylszdq1pgs";
    };
  }
)
