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
    version = "1651537920";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d31c2035e4444d7ecc6b04efc0759ad99fb9242d/code-insider-x64-1651537920.tar.gz";
      sha256 = "0bw4kdjfm45c3nch19hgxrp9mgr190xq3w0q978sqpza2bwiw6r3";
    };

    postPatch = "";
  }
)
