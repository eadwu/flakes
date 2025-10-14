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
    version = "1760332751";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bf56edffb59c43fa0de636c3aa1d548770b168b8/code-insider-x64-1760332751.tar.gz";
      sha256 = "18iv4ba3n6vp4wb88j2kpv3j33wm1kmlkp4i0abvr8qgg337f40q";
    };
  }
)
