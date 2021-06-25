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
    version = "1624599034";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/49e1f9919880c1c96004f9b6ad91bcee7a94a1bd/code-insider-x64-1624599034.tar.gz";
      sha256 = "1cvm62clggddk1hwcd9b8dgy28q39c0h9dnw8xxhqascd7xl5352";
    };
  }
)
