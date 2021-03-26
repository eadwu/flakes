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
    version = "1616768045";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d06d2f1d6245ce00b1c36a9cd81a9087d225173e/code-insider-x64-1616768045.tar.gz";
      sha256 = "0faqlhpxqknh4y7xhp5hyj4s97cd3jby7vp376hldzh5qwhjs7cw";
    };
  }
)
