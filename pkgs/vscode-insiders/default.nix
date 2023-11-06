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
    version = "1699248855";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9aacac648821b5c9c1a7192ac9d44c50af6fe241/code-insider-x64-1699248855.tar.gz";
      sha256 = "12qpm6lhkqhmq2nkaqlfx4jsb60l65h7lrizp84ijrak2954pch1";
    };
  }
)
