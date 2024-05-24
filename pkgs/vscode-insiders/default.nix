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
    version = "1716504423";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a0986b0f653c8309e8a957d53a0a5039239c6a5d/code-insider-x64-1716504423.tar.gz";
      sha256 = "1awyasy75jqgyyj9yp0xpv9dm2x99s309l2ndyvk753iaap1klig";
    };
  }
)
