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
    version = "1658135710";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1ccfe2bbe804a20a7c657ca42368987fd1adac58/code-insider-x64-1658135710.tar.gz";
      sha256 = "1vi8m7qq6why8lzp1a0anwq3jagvcva3alyy6id35m6p13zb9dwr";
    };
  }
)
