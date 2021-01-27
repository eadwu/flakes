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
    version = "1611738902";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7b0cfdd04ad530a9c8d782c618afd79290be3d64/code-insider-x64-1611738902.tar.gz";
      sha256 = "1h8ypzdflvb2vs4g2zkf03hfd59jlfanivcg9r5r0sb4rc515ris";
    };
  }
)
