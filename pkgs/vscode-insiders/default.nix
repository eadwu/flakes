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
    version = "1658468655";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/13ba7bb446a638d37ebccb1a7d74e31c32bb9790/code-insider-x64-1658468655.tar.gz";
      sha256 = "0948vlxcl423x1wxsipc60j55hgn99nvvyi1ngddwx6qxrkzs555";
    };
  }
)
