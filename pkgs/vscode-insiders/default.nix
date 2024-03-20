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
    version = "1710913904";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f7c827a5e0ddbba66425ea54e33430bce8f53c84/code-insider-x64-1710913904.tar.gz";
      sha256 = "0p8j6xhbx3bid93pdyp9wcxli0hb75rkdjznaszj28ndkcwrmwrn";
    };
  }
)
