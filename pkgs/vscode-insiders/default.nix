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
    version = "1732819683";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/275faf6f08b7aa50843f3c18406b4d5969784e52/code-insider-x64-1732819683.tar.gz";
      sha256 = "09qsqlyns5v2zw2759q5nsjwzqi8256i7xi5qpbsyw0sah0bb72x";
    };
  }
)
