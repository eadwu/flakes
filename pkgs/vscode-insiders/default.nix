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
    version = "1729768733";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e1de28e4eeaf685668c21bac9b2a0f3a68608c44/code-insider-x64-1729768733.tar.gz";
      sha256 = "1xai787gpdw3nc3rq80p3vl6ymz2cncpl7rrvyflifpz0hwqdz2q";
    };
  }
)
