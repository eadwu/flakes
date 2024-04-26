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
    version = "1714092985";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2fb3fa8dd2f85d7f452066f8a64e8bf259d21412/code-insider-x64-1714092985.tar.gz";
      sha256 = "1l91hhfdv99d7z6m6nndjh14y789jc638jiw8sfdlpl8hmdji6q8";
    };
  }
)
