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
    version = "1712728214";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7eba2d200076e9ca04ef1d0874fb49aae426f895/code-insider-x64-1712728214.tar.gz";
      sha256 = "1h5mnw9a36a9pldbm4290smbm3v4xszzlfgl236q2168b2a5gm7j";
    };
  }
)
