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
    version = "1728279987";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0ca72abae2123195125c9809525eb07f63da0e53/code-insider-x64-1728279987.tar.gz";
      sha256 = "0zvfmm6bmp3l44gxaab1y91vxnpyv87fqwr22mq2wpj88wzpmprr";
    };
  }
)
