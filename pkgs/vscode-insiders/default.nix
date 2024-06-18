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
    version = "1718657705";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/406d1d726fc68ab1146a2baf8afd134d5b95075a/code-insider-x64-1718657705.tar.gz";
      sha256 = "11ls5bxbjwx7iphwdgrndkwsnvjrc279rigms00s2ja487dclfaq";
    };
  }
)
