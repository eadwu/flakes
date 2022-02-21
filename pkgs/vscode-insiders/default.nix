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
    version = "1645421920";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a0da9978b10ae0b9307c7f545b50a8500efff7eb/code-insider-x64-1645421920.tar.gz";
      sha256 = "1fi9fww8aynqlc840vgf38gp2m4502bm45784ihff5d3197yq4h0";
    };

    postPatch = "";
  }
)
