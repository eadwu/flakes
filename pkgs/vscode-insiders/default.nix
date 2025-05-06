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
    version = "1746544208";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2ca71a161264b469f39ef1ad8b5fb12c47e69888/code-insider-x64-1746544208.tar.gz";
      sha256 = "1p7vp775vvjpnrkydc6r7h6r78hvwzyalkispgn2jr6f3ssja61w";
    };
  }
)
