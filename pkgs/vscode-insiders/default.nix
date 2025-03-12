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
    version = "1741769297";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c1fb4c3983bcc28e63dd159dbbb2ea98d352d33e/code-insider-x64-1741769297.tar.gz";
      sha256 = "0fyj1gm4fq1v3jia6gv8h2rjc5szh7fmn7gs321c3nh3rm9p34cf";
    };
  }
)
