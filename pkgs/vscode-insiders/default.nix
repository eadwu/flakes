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
    version = "1650610268";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/72b4be55fad0d41092d7df8e03b5597c715fd2e2/code-insider-x64-1650610268.tar.gz";
      sha256 = "0q83q6pqp169f4x2dp2zs6yls0h4n1hb3y1wvb0fi2z9nb2sxhh0";
    };

    postPatch = "";
  }
)
