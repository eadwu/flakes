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
    version = "1728020991";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c33745f66ce1cd626c3282112671e2a66471ce4f/code-insider-x64-1728020991.tar.gz";
      sha256 = "077fn5p6g981mf0nwl77x9ca2x1n597h7h3px94jjmpm2syz54bk";
    };
  }
)
