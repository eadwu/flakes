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
    version = "1671531394";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d957d2ca58ded0ab70ed7fadc8a1f6a36fcf2d1e/code-insider-x64-1671531394.tar.gz";
      sha256 = "0j6aapihjkf7rfg1bl9dxqicj6ys9r2y4f9v7v4id262wzdn1yp2";
    };
  }
)
