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
    version = "1642661805";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0c6d1e9f7ef648cfa50733abb62388bc0791856a/code-insider-x64-1642661805.tar.gz";
      sha256 = "0bn3bg14y3q7609fa102nhlsy4qaahqygc88y20cgrggkl046gfv";
    };

    postPatch = "";
  }
)
