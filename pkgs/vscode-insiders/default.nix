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
    version = "1611336916";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed72c64b87ede96fb51bc16870f9d2ecbf4fcc57/code-insider-x64-1611336916.tar.gz";
      sha256 = "1rlz6kmvawg7lb9r6l4w6j7da8f3wb1650n3kp6ck2pihh36498d";
    };
  }
)
