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
    version = "1627693658";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ba0df885e9d6b0f0ccf2cc714c3fa31423572205/code-insider-x64-1627693658.tar.gz";
      sha256 = "1dxsxy0h9v488j8xd35ki69dggz3ddff2x2lrgsjvcf7pr28m0za";
    };
  }
)
