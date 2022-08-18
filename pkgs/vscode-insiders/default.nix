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
    version = "1660801502";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f5c96e2db885f43fe1adb4a6ebbdfecf095430a8/code-insider-x64-1660801502.tar.gz";
      sha256 = "1fbz2xg7g3r2i2mh9d1n7069xz6ambi0b9l1dfyvh1lm7vgla5bx";
    };
  }
)
