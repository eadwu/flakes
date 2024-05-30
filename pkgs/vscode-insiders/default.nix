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
    version = "1717048338";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bc15ede705b9168324a3440b7c80c80644743306/code-insider-x64-1717048338.tar.gz";
      sha256 = "1agrzabmfk4b854vmmqzv4g4i86l52nnhf5zn167hwxiyzgyhfp9";
    };
  }
)
