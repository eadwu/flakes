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
    version = "1644817440";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/50089c3f92c17584a4aca179f51f220b56c22020/code-insider-x64-1644817440.tar.gz";
      sha256 = "06b40rhblsbwa9gjf1bgjw3nxa5dzlci1z6ik5pdj1d34fb79ryb";
    };

    postPatch = "";
  }
)
