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
    version = "1662742326";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5cecbf4746a7b95dedaf9fc4534b9786b9a30ace/code-insider-x64-1662742326.tar.gz";
      sha256 = "100fsd3fg48bpgpqdxsqc0p2f1xrb7s6n7az79bkfhax658x47i2";
    };
  }
)
