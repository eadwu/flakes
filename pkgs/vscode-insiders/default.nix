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
    version = "1629178987";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f0913d7718bbc4a805cd3a051335b4df60ca5d77/code-insider-x64-1629178987.tar.gz";
      sha256 = "0k7ikc3xb4kmxdqsrbppjzc5psaw1knfxmv14yv38nx47k56zhwv";
    };
  }
)
