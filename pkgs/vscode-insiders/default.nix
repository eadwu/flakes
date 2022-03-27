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
    version = "1648385486";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/10dc49b279e2f8ab0194a0e831ade4ea773b8a55/code-insider-x64-1648385486.tar.gz";
      sha256 = "0c91g2bzv4q91j6n15cb3pgf2ag3zby1aikmii9ydgqjmlca91fl";
    };

    postPatch = "";
  }
)
