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
    version = "1679607780";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/deedbd33f5dc57795e11da7c2a26b5a05a93485b/code-insider-x64-1679607780.tar.gz";
      sha256 = "1ddnjal9fpky9023ma1qdq86qx9w2sn0z581ipk5nxj5xpgxkf4s";
    };
  }
)
