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
    version = "1606974788";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92192baf760315ac47fb2caaf3ce6d0778962352/code-insider-x64-1606974788.tar.gz";
      sha256 = "00w7pr6h2i0xnmbiqzpvj28049qvd7h9p3m3yp3929k9nhh6sjyp";
    };
  }
)
