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
    version = "1636453788";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b614fb5db84b3ac07fc3e8b12c69c1dd581924ce/code-insider-x64-1636453788.tar.gz";
      sha256 = "1lkzk3h1wzk3niaslqbjlmlcds0hhf5dvnq8sj9i1hqi2misz2da";
    };
  }
)
