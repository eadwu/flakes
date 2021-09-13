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
    version = "1631511523";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ec40cbe164c59f3d13b6eff5fc7b0231ec0ab7aa/code-insider-x64-1631511523.tar.gz";
      sha256 = "0gww3qp4x2ppy2ancfc6hdnx8sglfqw4n1369b9mrq6drmh5vbm7";
    };
  }
)
