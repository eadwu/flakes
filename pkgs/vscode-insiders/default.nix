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
    version = "1667318202";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8fa188b2b301d36553cbc9ce1b0a146ccb93351f/code-insider-x64-1667318202.tar.gz";
      sha256 = "0ippwj6yrxl4hgs9aqx6zdwbv5784w43p7vglv26wbz990v6xjg4";
    };
  }
)
