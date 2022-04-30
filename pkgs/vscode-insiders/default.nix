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
    version = "1651275257";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed2619e11b68bec43b788486230b0c2afeb4672d/code-insider-x64-1651275257.tar.gz";
      sha256 = "02lng1aky71hsda74wv6qbczhs0vv0f3dgjh5wlc541mhrgwldx4";
    };

    postPatch = "";
  }
)
