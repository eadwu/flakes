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
    version = "1689162423";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d568855b2a4ef75716cdaa9a52da5315f5100a5d/code-insider-x64-1689162423.tar.gz";
      sha256 = "00x53h7pdb4l8fabv54jd9qgcklqxwc1pdmf8qi0y6cxvvxpil6r";
    };
  }
)
