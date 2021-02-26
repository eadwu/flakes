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
    version = "1614317377";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3290f9a73ba6fc3b1063ea32476067434ee91b1d/code-insider-x64-1614317377.tar.gz";
      sha256 = "1f0z7kpfshladr7xpdi9kwz91kcgijzqx1ry79k3p8yyfl31f5xf";
    };
  }
)
