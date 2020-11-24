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
    version = "1606111121";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6026ab576dc6a4fbb8e255241a364816f42464c5/code-insider-x64-1606111121.tar.gz";
      sha256 = "0d2vq22g6b3mny6hrl6gj3fzgllls8cc36jjw1jal5gpilxi2zmf";
    };
  }
)
