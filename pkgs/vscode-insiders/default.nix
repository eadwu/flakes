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
    version = "1665640094";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a8108049ab61b970f2ec1839dfb753054e07395e/code-insider-x64-1665640094.tar.gz";
      sha256 = "0f492p3nfwhlgn5b91c2p400pi79j9nllf02w5k9cajishdzp2l1";
    };
  }
)
