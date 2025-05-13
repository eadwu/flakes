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
    version = "1747113693";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1250f01c2bd215b6d5d07d933a62c96df35da3ea/code-insider-x64-1747113693.tar.gz";
      sha256 = "1k7658c4gcw4gq279ya2axjqc7hm0faswxvxdpvxcxiiazqd7h5x";
    };
  }
)
