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
    version = "1692596103";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f125afbc800ec611f5a9ab1333c769832ce424b3/code-insider-x64-1692596103.tar.gz";
      sha256 = "02dwgq1yw6k1f7b3zhbav87a4ybkv0i9r3wqimx73b0ppnc8x8fh";
    };
  }
)
