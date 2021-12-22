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
    version = "1640151879";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7b9e5c32a053669d4e72f998e4fa217090c32f59/code-insider-x64-1640151879.tar.gz";
      sha256 = "1yxhzg3rwjq8ala8whb8y2ps711jkzbk6nccij3r1w5g25mi5sii";
    };

    postPatch = "";
  }
)
