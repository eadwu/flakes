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
    version = "1659686635";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/73fd3f11032e7b83c2ae011b5516e6ddd19e3db2/code-insider-x64-1659686635.tar.gz";
      sha256 = "13p5da2gssi4zk0r96ykk51r3335pzg858sjm7kza8350x6nawax";
    };
  }
)
