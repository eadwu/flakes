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
    version = "1648455517";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45999664ef626d6d665cb585104efdcab383a3cd/code-insider-x64-1648455517.tar.gz";
      sha256 = "1nvn23bx4sa0bkh7f60i5dc6g0q0gbdfbnfdlsvg4v38pagiqp4q";
    };

    postPatch = "";
  }
)
