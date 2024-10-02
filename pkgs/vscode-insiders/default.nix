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
    version = "1727877344";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d78a74bcdfad14d5d3b1b782f87255d802b57511/code-insider-x64-1727877344.tar.gz";
      sha256 = "1i5a6bfjylrq1b4aaahygqv7sjzw6xzn1gdzybkqxakfsacajwl1";
    };
  }
)
