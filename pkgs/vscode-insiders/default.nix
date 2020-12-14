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
    version = "1607925350";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/96b426ef1da0f0a51ce9ef1931cd1fd2322547e4/code-insider-x64-1607925350.tar.gz";
      sha256 = "0x9ahs85kp72ai5a9jwag4mjm2l1n0ck935mx4vdhk39i2mczrz1";
    };
  }
)
