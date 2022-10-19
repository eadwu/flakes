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
    version = "1666122310";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/38b89a1b964e3356209421e28a0ca2bb097f8b63/code-insider-x64-1666122310.tar.gz";
      sha256 = "0rn46461i61jny7by18bpp8rx6mxi5532g5q035n7bgvpm2jybil";
    };
  }
)
