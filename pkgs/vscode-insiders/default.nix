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
    version = "1761300470";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2b3de7cd5054bc1da66b18ba1eae9d622e3ebbb2/code-insider-x64-1761300470.tar.gz";
      sha256 = "0a4xa7kj786i7jwidhzbqf2f5w2mwpvfa41m3yix25mzrncv06xw";
    };
  }
)
