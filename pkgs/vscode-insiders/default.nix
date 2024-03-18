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
    version = "1710779762";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b356b209a5a41743b45f25d569a7afb733d347a9/code-insider-x64-1710779762.tar.gz";
      sha256 = "09lq2l0x71lsmv6f1qxqjvvg1cav8y77xajq0yhxjiz7clmakjlg";
    };
  }
)
