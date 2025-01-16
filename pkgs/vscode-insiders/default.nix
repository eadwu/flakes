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
    version = "1736985904";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c799d209cd4846a2a822b55dbf2ca21893008faa/code-insider-x64-1736985904.tar.gz";
      sha256 = "1aphw56cff7yzqykffaicskzxv41c5fagzr8qxx6b5j92iv94dw8";
    };
  }
)
