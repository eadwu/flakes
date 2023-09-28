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
    version = "1695896755";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/623feb6ddd360d97dc77e2ff577dd2c549ef442d/code-insider-x64-1695896755.tar.gz";
      sha256 = "1269m1nndmn62vad153x8m6d6cg9nc36pdbj2k25giwqc26fsi21";
    };
  }
)
