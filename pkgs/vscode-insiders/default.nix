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
    version = "1604515395";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fcac248b077b55bae4ba5bab613fd6e9156c2f0c/code-insider-x64-1604515395.tar.gz";
      sha256 = "0w8slari5v2khd7gn12pjxnx54dybz0sf4sqayxim4r7xdanws4k";
    };
  }
)
