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
    version = "1690263210";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/885dba39a5f546c5077196a8c31b03d03a293b31/code-insider-x64-1690263210.tar.gz";
      sha256 = "14amd0biyzkmq6rc7lr5fbcmlnnwl31j3pl352nmv27sxnsvdn1r";
    };
  }
)
