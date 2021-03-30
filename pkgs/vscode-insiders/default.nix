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
    version = "1617109277";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c185983a683d14c396952dd432459097bc7f757f/code-insider-x64-1617109277.tar.gz";
      sha256 = "1l3m3w5avmq3y59gnc3xkmqs16nxif9x373l15wp3sd37qknfj35";
    };
  }
)
