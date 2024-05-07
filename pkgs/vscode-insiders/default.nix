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
    version = "1715061034";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/00bc1553bafe83896a96e1b2572024083d14515a/code-insider-x64-1715061034.tar.gz";
      sha256 = "0k0xamd3v5r74l4xwhglyj0d5i5zjvnjn1mn9ba5mjblvwf424jd";
    };
  }
)
