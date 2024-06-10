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
    version = "1717998645";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fec18ef7d6793521c4683e67e569579ea970cc6d/code-insider-x64-1717998645.tar.gz";
      sha256 = "1ki227qxaxx2v2s0xq3p849g0ch6mpg8vh4ydby401ybvkvsr3d9";
    };
  }
)
