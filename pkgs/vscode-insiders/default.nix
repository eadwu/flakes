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
    version = "1658239542";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92fd228156aafeb326b23f6604028d342152313b/code-insider-x64-1658239542.tar.gz";
      sha256 = "0kxcmi34nq7sn2ygzkfqw557jhllq5l7p39nhnblnx7rv1nlzzqd";
    };
  }
)
