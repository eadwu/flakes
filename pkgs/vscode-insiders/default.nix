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
    version = "1701172986";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b3b84b5239037a2f0ef8499306df9a3bacda4105/code-insider-x64-1701172986.tar.gz";
      sha256 = "1pwrmz43gnmci262l62316w6vy4hsz2wh0qqpsqmwjjv1d2s9lxa";
    };
  }
)
