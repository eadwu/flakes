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
    version = "1744262562";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7dbf25d8427b59f519d04587e71a9d3dfb77224c/code-insider-x64-1744262562.tar.gz";
      sha256 = "15imq729bq6jqlz2yank9c020y3fajdddlnlwf7ydpqyamgzcqsf";
    };
  }
)
