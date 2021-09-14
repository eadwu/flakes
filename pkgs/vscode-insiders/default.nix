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
    version = "1631597865";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f66a3e06bcb9f000e5dc0ad0040ff9b32fc75c78/code-insider-x64-1631597865.tar.gz";
      sha256 = "1w8l1y3q9jgvk4146qz7xck9nc7iy0gdfm5517ia6z2zrlc067my";
    };
  }
)
