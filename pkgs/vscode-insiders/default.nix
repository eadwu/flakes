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
      sha256 = "062m7vxdvlc36vjjlwjm48j8ybqbvzyapq8l7yxyz3vg5r3fvn3j";
    };
  }
)
