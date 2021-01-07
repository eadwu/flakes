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
    version = "1609997805";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/01089c0a5052432594a177f90ad9f3148ec2a6a2/code-insider-x64-1609997805.tar.gz";
      sha256 = "02kj2mw2a4m01mpbg9cdbahvvaawmsd9zyqyvyjvpg0x8pyqs7sl";
    };
  }
)
