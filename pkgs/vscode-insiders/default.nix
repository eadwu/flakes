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
    version = "1613472136";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5e74ad5430203eadf89fd8e99695f4ebdb0e62ad/code-insider-x64-1613472136.tar.gz";
      sha256 = "0f39b70zssc3agvksm69y9ijzqivjchk82prshc7krhgqvwaxy0z";
    };
  }
)
