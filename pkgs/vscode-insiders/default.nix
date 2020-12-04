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
    version = "1607078482";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5e350b1b79675cecdff224eb00f7bf62ae8789fc/code-insider-x64-1607078482.tar.gz";
      sha256 = "1kzk150pcwjnylg209bra6mnfdyfkvv6q71x2fg48c1vqb3mhr3z";
    };
  }
)
