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
    version = "1720504219";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b23e791eb5afbd95f05aa24da7693ce89344a079/code-insider-x64-1720504219.tar.gz";
      sha256 = "1vswazybyrlcrjnwzq83li4jpmsycfa3m2zfxhn7cbwsj747x3p7";
    };
  }
)
