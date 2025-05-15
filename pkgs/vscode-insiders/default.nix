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
    version = "1747326899";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/17d1fa2d33e93d129c7deff16be86ad360abd2a8/code-insider-x64-1747326899.tar.gz";
      sha256 = "1s5q8bvf4m8g82kb114zp47jhb1gi5q1jhvfawqr7pj5z2y9966k";
    };
  }
)
