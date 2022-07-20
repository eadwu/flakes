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
    version = "1658295971";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3da2d669a4dcf93938a262ba92f50b128ca7262a/code-insider-x64-1658295971.tar.gz";
      sha256 = "0rz3gx56bsk86gr6klrgr1i22jigqvbfr8yd84j9fwjl32zlxkj7";
    };
  }
)
