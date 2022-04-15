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
    version = "1650001077";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a9288be67bab4e9c4dbe62207f01fafc2bdaadcb/code-insider-x64-1650001077.tar.gz";
      sha256 = "1aa7f6ndwp08lhzsllvlbj3d09si0dqzcyspz2scgrnd8111xijv";
    };

    postPatch = "";
  }
)
