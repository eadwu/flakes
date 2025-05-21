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
    version = "1747805150";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/496ebc4723371f29c9ffa0319dcccb2d7bee7ee0/code-insider-x64-1747805150.tar.gz";
      sha256 = "0bxvzqqkgz0nk1xa8b290h7wiahy88sig0ps8fcji02xqmsx0zcz";
    };
  }
)
