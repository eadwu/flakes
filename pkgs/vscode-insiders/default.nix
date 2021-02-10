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
    version = "1612934951";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fe6eb68d228472db7e656ffbf2b10f5e987fad48/code-insider-x64-1612934951.tar.gz";
      sha256 = "19a7c53i5y7w825yqfjkzzp3wgbq635mcwzq5hqr1pyhp2s6d0fq";
    };
  }
)
