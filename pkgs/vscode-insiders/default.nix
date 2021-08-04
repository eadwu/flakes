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
    version = "1628067996";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8f58c1f457bd2ddf6cf81120c450c783b6e8c01b/code-insider-x64-1628067996.tar.gz";
      sha256 = "18a75wh1h6b8nx47w4f5frif9nq1cnv5h14rvh6bjpiivq2z42jg";
    };
  }
)
