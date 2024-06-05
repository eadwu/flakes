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
    version = "1717615698";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7cd1f1ce4e8ba91863fc9840530073813a0fd4df/code-insider-x64-1717615698.tar.gz";
      sha256 = "0smk6x6gkfv318i767bnj51p87wg8n8k247l659p3sklv940iw6n";
    };
  }
)
