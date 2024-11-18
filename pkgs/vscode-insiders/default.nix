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
    version = "1731908978";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0c9dd26823dc38dd59d6240e1b6698add43d942c/code-insider-x64-1731908978.tar.gz";
      sha256 = "13mmjczmiyy4iyj3wi8i6a1ppm3gqma3gg3jgmv3472pjdyc5mc7";
    };
  }
)
