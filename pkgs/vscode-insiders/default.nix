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
    version = "1716342959";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4207ee1f8ddac59df509b75e4bdd1c77904f766e/code-insider-x64-1716342959.tar.gz";
      sha256 = "1v9r8nw7z6r8817x2aih87ynsn253d5v6yzbfx6cyf4bkga0k6xn";
    };
  }
)
