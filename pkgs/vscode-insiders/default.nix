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
    version = "1709185650";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/15a0f3c48f9315669c97f101a5d954464285e6ac/code-insider-x64-1709185650.tar.gz";
      sha256 = "0bqndwqzrcrm3g5nhrw0k6a8fh1s4m0a64c9vpivi6g5h19zzg34";
    };
  }
)
