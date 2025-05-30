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
    version = "1748582492";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1b4b2f807c36c2347167790756941d3058a3e8ae/code-insider-x64-1748582492.tar.gz";
      sha256 = "0nrbwzksfg2y0nm9pgdpw44di9na2bkpn8k2wns47iaxgh5kibc1";
    };
  }
)
