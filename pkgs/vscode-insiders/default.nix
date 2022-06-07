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
    version = "1654628311";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b7faf235467dd56e4a62e52e7f1cacf875b67261/code-insider-x64-1654628311.tar.gz";
      sha256 = "06wpg0b625id5vchvi45bk9xwj07hl19xgmjbi8bcvqzv7lcakq0";
    };
  }
)
