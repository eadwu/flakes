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
    version = "1714024193";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cc3429872df5e655abd12c233a9defbd15b0987d/code-insider-x64-1714024193.tar.gz";
      sha256 = "14jcd532nikmzbg40clsfpibzk997y0408z89wbaapd74x7m82mn";
    };
  }
)
