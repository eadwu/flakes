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
    version = "1683870212";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2575777b9d3cdb865d61f9f1dfaac1fea9e1bde6/code-insider-x64-1683870212.tar.gz";
      sha256 = "0k1fhs4756gc4rpqp1m98c57z0q4q2frinwaq7lx4p5c256n2ig0";
    };
  }
)
