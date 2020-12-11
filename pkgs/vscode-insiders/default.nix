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
    version = "1607709029";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/76436a4d43566cd313629799e2ec51b4d00caa64/code-insider-x64-1607709029.tar.gz";
      sha256 = "0c46swmigl6krpg2jc1w8f2lr6599b290hq6qa91lsd47snh7a6a";
    };
  }
)
