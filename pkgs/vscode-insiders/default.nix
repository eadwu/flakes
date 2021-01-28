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
    version = "1611842314";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2ce26643d85bf985d3d3ce6ce0ff5d78866f9b5f/code-insider-x64-1611842314.tar.gz";
      sha256 = "12dpxl6s20bqa0zpildjlm89ay6qigkczkryk3kzpy0zrm0lr4qq";
    };
  }
)
