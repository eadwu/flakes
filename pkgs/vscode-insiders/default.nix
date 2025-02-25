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
    version = "1740461129";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ac0e8f0f32e3de145dc3aa11d8182f208a05397f/code-insider-x64-1740461129.tar.gz";
      sha256 = "0naj6lbfxpjnjar54vcjxkir7yc5rrzdxm8lpxsimbklzx28nlp3";
    };
  }
)
