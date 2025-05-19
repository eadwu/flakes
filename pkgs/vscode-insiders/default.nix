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
    version = "1747622990";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/18ed64835ec8f8227dbd8562d2d9fd9fa339abbb/code-insider-x64-1747622990.tar.gz";
      sha256 = "1ai7dw3b9lnav2vzm932mg1wx5q8lg9yb488hg2lyf19218c26i0";
    };
  }
)
