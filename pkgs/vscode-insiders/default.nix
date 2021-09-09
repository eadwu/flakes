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
    version = "1631166025";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/aa93eefe550167de3ca29aaa3d06f721a47594a3/code-insider-x64-1631166025.tar.gz";
      sha256 = "05ixmy09zi7r4jjinwawr0sfr61233gah5rynr7qm6d15d6xx13i";
    };
  }
)
