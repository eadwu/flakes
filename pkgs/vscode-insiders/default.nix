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
    version = "1654148418";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/15253f1528573fc8f84e956b21af4bad57f38c07/code-insider-x64-1654148418.tar.gz";
      sha256 = "1adjhgpngjbf5hjqf343fhwawgbapazln9yl1x7s65m8n4dgjjcf";
    };

    postPatch = "https://az764295.vo.msecnd.net/insider/15253f1528573fc8f84e956b21af4bad57f38c07/code-insider-x64-1654148418.tar.gz";
  }
)
