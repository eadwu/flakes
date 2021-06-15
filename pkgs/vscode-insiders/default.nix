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
    version = "1623771643";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b79d23d3568db6c926c5ac428457c31f4dfc1c00/code-insider-x64-1623771643.tar.gz";
      sha256 = "1ypyigcg9r8mp6s1cn27yc0rib86yvzq26drj264n2bnq8lbs1s0";
    };
  }
)
