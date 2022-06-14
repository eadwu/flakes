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
    version = "1655204419";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d8823e67a907b3fa176068ad802682ccd74f8083/code-insider-x64-1655204419.tar.gz";
      sha256 = "0m6552jgi515wv1bn9wvpj7c5f2ij9pnilb17xwkkgzrbcqifj3z";
    };
  }
)
