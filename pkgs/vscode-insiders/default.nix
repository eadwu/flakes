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
    version = "1685079939";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2dfb838f494f035099e999f0cd0eff5f1f488a30/code-insider-x64-1685079939.tar.gz";
      sha256 = "1s0yhdw6yankq7p87lv23m8mipzxhi2qsprc4nl9mmwsgxzcdf7m";
    };
  }
)
