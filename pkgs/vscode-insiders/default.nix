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
    version = "1633351194";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a4342f3addc29f405a5cb4aab359b0b98223411e/code-insider-x64-1633351194.tar.gz";
      sha256 = "1fg2sh439jrjiwdqrnpvhqyyw4wpmdf2xhis199hadcwd1mib72d";
    };
  }
)
