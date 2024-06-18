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
    version = "1718689955";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7d06e7bd5ccc364af3ce28a946e2d3369634eb5f/code-insider-x64-1718689955.tar.gz";
      sha256 = "1ihaxs4x3hcf32g606zxi1rzynnsdb356fssmzap2mbi04ggjl98";
    };
  }
)
