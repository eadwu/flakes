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
    version = "1748328737";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9bb394b245ee20e869120eefdc6929c580029adf/code-insider-x64-1748328737.tar.gz";
      sha256 = "0iicf74dijg7577nyvv7xwf2rg0yi9yvjpv1zqr13rwxb47knigr";
    };
  }
)
