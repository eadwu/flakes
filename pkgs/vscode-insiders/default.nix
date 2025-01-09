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
    version = "1736431693";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b7b6f26c6214e93095ab090b27cb069a85adc276/code-insider-x64-1736431693.tar.gz";
      sha256 = "1kcgf8v0rj35rl6gzm7x352y4g1hbflark7wwzd4nh3rghk0p07m";
    };
  }
)
