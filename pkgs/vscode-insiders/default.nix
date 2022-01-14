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
    version = "1642139473";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c6e58d126f6b5676242e32b34180b2a595f29b51/code-insider-x64-1642139473.tar.gz";
      sha256 = "10k44avnhcihz6slad4ignxjqwrkhs8f10llwnrhf2v3n6rj7snf";
    };

    postPatch = "";
  }
)
