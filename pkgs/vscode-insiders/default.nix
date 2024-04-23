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
    version = "1713899260";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fd518e4db7bcf89d7e19bf29522786d0cd16a9a6/code-insider-x64-1713899260.tar.gz";
      sha256 = "1hdv5sq90wbs1dip6cxz380nvi3vafqr1qs7m3q784v6znmhr3md";
    };
  }
)
