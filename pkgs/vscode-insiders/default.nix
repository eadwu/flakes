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
    version = "1715233781";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5f78b58b57b7cf84d28d801fed6bb4a48f908601/code-insider-x64-1715233781.tar.gz";
      sha256 = "0shfqgn6d1fl9zbsgaszv70sf8masvf2274fiwrdyg0mv3a0g57z";
    };
  }
)
