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
    version = "1694193119";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/079d0abf1cdfa6b46f64c8dcbaea4d6925d7e4fc/code-insider-x64-1694193119.tar.gz";
      sha256 = "0mxhcz8k9km82w505pcs1257yzicla3bsbbqmvpl6jdsilmv2gmi";
    };
  }
)
