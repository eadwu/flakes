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
    version = "1687940798";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4649b5333370139d161e7b5d4f78ca13741efa35/code-insider-x64-1687940798.tar.gz";
      sha256 = "031f1a6vsl3iva665wflhgnj7cwhc84vqhgl5p1dw6nzsivcgh23";
    };
  }
)
