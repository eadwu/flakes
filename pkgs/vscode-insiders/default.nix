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
    version = "1744955351";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1b000ef82b3c3082833f6b04e050bc0e4e12ae3b/code-insider-x64-1744955351.tar.gz";
      sha256 = "1i0rq5a9xp011mwm2rxswfy37g5yfg2kxqcli7pp21870hz3dh1d";
    };
  }
)
