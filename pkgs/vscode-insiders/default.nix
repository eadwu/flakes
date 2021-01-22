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
    version = "1611306611";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4f2341834e646360e603953b62bf6c6020b07a29/code-insider-x64-1611306611.tar.gz";
      sha256 = "0zmj9nb2b7crglwq5zbkm6ii0wic77s1k7qvxnmpfrfrvkbyvz2x";
    };
  }
)
