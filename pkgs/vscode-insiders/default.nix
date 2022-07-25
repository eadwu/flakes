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
    version = "1658728706";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3cbf3063281410d21951877eb628551809d70c6b/code-insider-x64-1658728706.tar.gz";
      sha256 = "1xvq8yn70yl5p2h34nsggfs1srv8v5h8xkjawsdjhh3casp3c2xc";
    };
  }
)
