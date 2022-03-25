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
    version = "1648198259";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/616cad0638d0c6d436abcf42fb85a8e333b7d705/code-insider-x64-1648198259.tar.gz";
      sha256 = "13l0d258rxn5i2k5vp2klf36wq2yqsm7rmmwpgsp6sbw1c0aai00";
    };

    postPatch = "";
  }
)
