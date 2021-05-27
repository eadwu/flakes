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
    version = "1622099484";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1082913dd012e21cc5f35a06f15c480ca447f67f/code-insider-x64-1622099484.tar.gz";
      sha256 = "0dsj7d3p3k95h726r91zm8gbp702x7j1bwv9bsrpqsd1qxnrvspr";
    };
  }
)
