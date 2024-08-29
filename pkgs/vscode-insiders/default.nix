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
    version = "1724953945";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5b066ec2e30cf46bc636d6d27af5404713f6b0f8/code-insider-x64-1724953945.tar.gz";
      sha256 = "0aszc8wpv2nfw6p5m14wac5khzqwz79by7pa5ywjdbyv4xki3w0s";
    };
  }
)
