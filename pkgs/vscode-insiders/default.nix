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
    version = "1690445566";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/268f34992c5d826a08e4b72013f95af9683044ea/code-insider-x64-1690445566.tar.gz";
      sha256 = "002bck32hy5pg5ls4yszmzpap33kgf9big3g17k5pnvn1mn7a7wz";
    };
  }
)
