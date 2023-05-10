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
    version = "1683697471";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/efb49cc271d6eea5634ac395e36e1e4cd108a447/code-insider-x64-1683697471.tar.gz";
      sha256 = "0864nrr1ycz6wwyyljq2lzgyppw85dqql2a6cw90qcyrydbzmfcp";
    };
  }
)
