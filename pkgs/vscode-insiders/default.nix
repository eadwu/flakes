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
    version = "1739771149";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e20adc378e7bda18152984725c31d22cb4eaac17/code-insider-x64-1739771149.tar.gz";
      sha256 = "088njsk1ami8dpjmk505qimc6w84xdwqw6nr9djc7mmq13krrygv";
    };
  }
)
