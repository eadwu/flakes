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
    version = "1647322793";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/79d9bb8754331225372e892393619d4072474a19/code-insider-x64-1647322793.tar.gz";
      sha256 = "11f8dffw6l9kjdivyxniax36l9s53f15902fmawzx85pm4cgljiy";
    };

    postPatch = "";
  }
)
