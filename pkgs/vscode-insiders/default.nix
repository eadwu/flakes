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
    version = "1742379255";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/757405278fac64ad3f5807f86042bc000c291920/code-insider-x64-1742379255.tar.gz";
      sha256 = "11fh5n2a3yan4752gpi9996jxwbcynqpsv3s7jqrh5619xjwpliz";
    };
  }
)
