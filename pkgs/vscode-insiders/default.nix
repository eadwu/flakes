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
    version = "1623908073";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a81fff00c9dab105800118fcf8b044cd84620419/code-insider-x64-1623908073.tar.gz";
      sha256 = "062nv54yic5kazlymhaa1mhjhc7hq97inln4f2pcmv04sa4jwr7n";
    };
  }
)
