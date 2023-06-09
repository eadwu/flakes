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
    version = "1686336651";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6cd5ac180a6362b45b415a624f62173caf7428a1/code-insider-x64-1686336651.tar.gz";
      sha256 = "0jlfq06lcr8a3d3m336kl253sl2wfsv06kbijm3qmn74zcfjfxy2";
    };
  }
)
