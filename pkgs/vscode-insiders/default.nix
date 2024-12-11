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
    version = "1733948236";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/079df18bc89a113d831a43fa36c2f472136d5b40/code-insider-x64-1733948236.tar.gz";
      sha256 = "0jv4nwmm9gz18qhk8c4g14la1ccycpr44yrac1g5giy17dv47miw";
    };
  }
)
