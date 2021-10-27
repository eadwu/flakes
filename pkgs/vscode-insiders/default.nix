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
    version = "1635359363";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f191b9d9fdf4254560103d1c977b3c37b18c6c83/code-insider-x64-1635359363.tar.gz";
      sha256 = "01k0s7qgbk56jr1dxcik1l2rmn6l0mgnwlfrkqsx086b39pvpk1n";
    };
  }
)
