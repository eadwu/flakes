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
    version = "1660542319";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a582f7c079d1eb4c89d4f637da2fc2fcb688b31/code-insider-x64-1660542319.tar.gz";
      sha256 = "0zf0xvp9d4kmljnqqbiy8lvzwc549hmgk3jwqq4617sp4np9p7xz";
    };
  }
)
