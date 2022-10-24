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
    version = "1666591140";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bece5db81842e38bf85e8a08fb1f12b7f78d4384/code-insider-x64-1666591140.tar.gz";
      sha256 = "08yw98bcj7d1v2shapgddsc2ma8jxl7xnyq8nvgqb4cqw8nmd4p6";
    };
  }
)
