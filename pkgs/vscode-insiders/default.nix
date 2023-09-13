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
    version = "1694583204";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f36df69328ed10f76d4be03e8a82b61794b49711/code-insider-x64-1694583204.tar.gz";
      sha256 = "1qhnv1p1360d8wkn5cwsmsm28cg6ib7bkqgrpbcl9yy90v1x6s2x";
    };
  }
)
