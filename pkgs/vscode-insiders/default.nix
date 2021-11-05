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
    version = "1636090746";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/552af97a0170b43c9323bec62211feb184da9749/code-insider-x64-1636090746.tar.gz";
      sha256 = "15b58yihry6wf56zyq41fqdczyj1s84b75nz0h1q8kjd21x191vv";
    };
  }
)
