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
    version = "1718699253";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b631c0aa4d30ff471171dd75376c6b49504f7ba1/code-insider-x64-1718699253.tar.gz";
      sha256 = "0247y86mnrab3zwll6fnzlss8zqlyjzaqm5lwdgrj4gc9ld91s9f";
    };
  }
)
