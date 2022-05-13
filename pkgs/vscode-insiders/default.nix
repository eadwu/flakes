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
    version = "1652464001";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9c29becfad5f68270b9b23efeafb147722c5feba/code-insider-x64-1652464001.tar.gz";
      sha256 = "0rs68bfq3xajn8jcic7j7acmgfkgkh7ih1x8698993xvzdjdy25x";
    };

    postPatch = "";
  }
)
