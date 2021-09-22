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
    version = "1632313946";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5df296407363de70e9d7b455e1fcb004ceaa6b75/code-insider-x64-1632313946.tar.gz";
      sha256 = "1576i3ba1ldnq3wllmd9gyzgcs2cindwywvvf6k5481fsnfinn7h";
    };
  }
)
