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
    version = "1708494456";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ee69e2887fbe532588f74ae86560e7fdc1e59550/code-insider-x64-1708494456.tar.gz";
      sha256 = "06j7rbywfpxvd3accv4sv033nyy0y9k8acafhhkyjhklpjchbk0p";
    };
  }
)
