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
    version = "1643953303";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/921264bfe3ffbbfe5ec8c4b08214b88e2148fa3e/code-insider-x64-1643953303.tar.gz";
      sha256 = "0yakhxdcp0a8r0j067yzpxhg2mfyc7jb1mgnk01k9fk20xfyp5zi";
    };

    postPatch = "";
  }
)
