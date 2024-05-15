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
    version = "1715752014";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5e68ffd760038bb156894a87f896910be510accd/code-insider-x64-1715752014.tar.gz";
      sha256 = "0i8g5kan651fnvy0a2psknsfv7f4084y87148a6prgv50jb06zpr";
    };
  }
)
