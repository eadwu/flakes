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
    version = "1701322536";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c6b48c364dde70c12bf977f1da50acda0fd801e3/code-insider-x64-1701322536.tar.gz";
      sha256 = "0nbbfpjham5s0fsn5i94yf16lxw35l1i1z8nwfc5rpib5d84jd6n";
    };
  }
)
