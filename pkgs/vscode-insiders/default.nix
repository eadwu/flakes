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
    version = "1664863849";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bb7692da16e8d4e01aea254d2f28312a673f351c/code-insider-x64-1664863849.tar.gz";
      sha256 = "0ddbhnp5bgbbjysp38907mbamxky31spjkipxgzkb6z7g768xm98";
    };
  }
)
