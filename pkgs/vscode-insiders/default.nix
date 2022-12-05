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
    version = "1670236965";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5235c6bb189b60b01b1f49062f4ffa42384f8c91/code-insider-x64-1670236965.tar.gz";
      sha256 = "00fr1vgsrjamx1k6z971d9y7hvfiqlibw5f7gna2ijvvf5ki58dz";
    };
  }
)
