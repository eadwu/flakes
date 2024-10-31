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
    version = "1730373306";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/54d1a4d6f395e73204ce0b5999439b267aec3fef/code-insider-x64-1730373306.tar.gz";
      sha256 = "06n0bp1sxqlq7jchbd8yrfyp8hh6y4rgk1rsd8qymdjswpq1af7r";
    };
  }
)
