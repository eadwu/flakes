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
    version = "1678828070";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a32f38f8ae718d9c3313238173eb5f0b268222db/code-insider-x64-1678828070.tar.gz";
      sha256 = "12qhhkhyxn3sz1cpcdyyswrnmmc4z5l7x3rnrsizdaknn9rpchds";
    };
  }
)
