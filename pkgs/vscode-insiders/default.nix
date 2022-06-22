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
    version = "1655876603";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f361c5b71d6676cfc6de97cdb1cc40b08bf7d994/code-insider-x64-1655876603.tar.gz";
      sha256 = "0h3jb65lbamxnzwm50nfnymgxfvrc3ppf7i8bik471adnb3cszw1";
    };
  }
)
