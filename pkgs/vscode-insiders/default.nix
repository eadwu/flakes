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
    version = "1687529673";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/49b8e2d5410795e5a23a9c6b7f99b97f4afb4b47/code-insider-x64-1687529673.tar.gz";
      sha256 = "0xvia2s9d3hdcc5m4gj3c050s782dxsds0w3n4d6dg6p0bc27qhr";
    };
  }
)
