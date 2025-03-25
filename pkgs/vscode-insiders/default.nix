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
    version = "1742840910";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b47e1fee9e4034b5a569d54f7765e4133bd3f7ed/code-insider-x64-1742840910.tar.gz";
      sha256 = "1m4q5ji2m44wldvb9ip7vl4ayazycsacsqhnn2z624v13j455gka";
    };
  }
)
