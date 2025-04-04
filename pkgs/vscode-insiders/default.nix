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
    version = "1743744239";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c7ea9f8f6c08db68cd63dabe8edfc8555904ee42/code-insider-x64-1743744239.tar.gz";
      sha256 = "1p75hql14k0q8qa9wkk95azqlh962pxgp5447kfimwjigrvfr3cp";
    };
  }
)
