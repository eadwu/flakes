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
    version = "1612979996";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/40b3204d70a9c72305c613164272175d0b344b5f/code-insider-x64-1612979996.tar.gz";
      sha256 = "1020qlcw4yrz5c7ymvwax1w8f27srlgpyk577qmjyw0qdqfwsni4";
    };
  }
)
