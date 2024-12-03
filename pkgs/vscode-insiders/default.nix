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
    version = "1733205416";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5d6531aabba3abfbc263c1e17e965db97df9210f/code-insider-x64-1733205416.tar.gz";
      sha256 = "1i3jm1y3qiinxmzn31zb4mad8ladgzk6x8pmsgyzq2abvm3a7cq9";
    };
  }
)
