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
    version = "1611552547";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d2cbc66835f9d128ab1cb190c3d33adc365764a2/code-insider-x64-1611552547.tar.gz";
      sha256 = "1xwfilj5akaf3603a28icv974zl1bj83l5crf6lvgy9hvc8ap9rf";
    };
  }
)
