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
    version = "1624950186";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cc528230987ce3ac61fc4f094ae247d5ff24db3c/code-insider-x64-1624950186.tar.gz";
      sha256 = "0nd95chglyjaks0732i10r6f1mv76ml2m4f4f3kr1ynd52149prc";
    };
  }
)
