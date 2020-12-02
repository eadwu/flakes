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
    version = "1606915690";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f4187f22026ff6537f2ca8132ad3209fceb5071f/code-insider-x64-1606915690.tar.gz";
      sha256 = "19zr2a5fbyy2wfz2l73jrm31qr202sd6rx8kpzxj05gzs314q33w";
    };
  }
)
