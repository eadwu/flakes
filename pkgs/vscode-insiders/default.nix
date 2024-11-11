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
    version = "1731304072";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9b365cafae763d229e999f353831458761aff1cd/code-insider-x64-1731304072.tar.gz";
      sha256 = "08zq3jwg5d0hf9ri71crrr6mlgviq13sxyfsy35lirwjhcmvl297";
    };
  }
)
