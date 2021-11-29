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
    version = "1638174807";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c42793d0357ff9c6589cce79a847177fd42852ee/code-insider-x64-1638174807.tar.gz";
      sha256 = "02nibx4pifp94cyixc5wmk0rqcz84wp4yncvxzp07br4bxldf2in";
    };

    postPatch = "";
  }
)
