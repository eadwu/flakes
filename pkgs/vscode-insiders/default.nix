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
    version = "1685030861";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/52e56ad19ae0b7cc812f85fa6dcb98928b2ba00d/code-insider-x64-1685030861.tar.gz";
      sha256 = "16q5r56nxw8hn1z0384cq1wsl8q7k03i4n2mnpsjgglsv81z0yy3";
    };
  }
)
