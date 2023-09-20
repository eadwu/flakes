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
    version = "1695197385";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f27dd75c3870a63c84a7976a6568655eca59d612/code-insider-x64-1695197385.tar.gz";
      sha256 = "159k28gp2wql2r777cjx1hzxn0dn19nipwsnzk4rh15c9barly8a";
    };
  }
)
