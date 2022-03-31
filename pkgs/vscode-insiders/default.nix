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
    version = "1648540617";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/521a3d858570ebc9ce9d5602802f4525a02e045c/code-insider-x64-1648540617.tar.gz";
      sha256 = "1ky1rmbdphq7cmplcgimfvq24zqgq3yj8rww2blf3sinlyrkf7rg";
    };

    postPatch = "";
  }
)
