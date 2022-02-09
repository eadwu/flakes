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
    version = "1644360635";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d8e93571421d69616e0ed7d7958e32abaf8d7d3/code-insider-x64-1644360635.tar.gz";
      sha256 = "00yfl7yp46kr4fk2cdnjcyl1imbg16yg2vbx9mv2a8xy5ayp3bvz";
    };

    postPatch = "";
  }
)
