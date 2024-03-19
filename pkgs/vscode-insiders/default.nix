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
    version = "";

    src = fetchurl {
      url = "https://update.code.visualstudio.com/latest/linux-x64/insider";
      sha256 = "09lq2l0x71lsmv6f1qxqjvvg1cav8y77xajq0yhxjiz7clmakjlg";
    };
  }
)
