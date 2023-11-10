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
    version = "1699627551";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2095b6f5a316c998fbfa17586d24f7974e3c8f13/code-insider-x64-1699627551.tar.gz";
      sha256 = "062m7vxdvlc36vjjlwjm48j8ybqbvzyapq8l7yxyz3vg5r3fvn3j";
    };
  }
)
