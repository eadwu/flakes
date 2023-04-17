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
    version = "1681751649";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0f194ab067643765c76ff18fa9c16dd5f433f100/code-insider-x64-1681751649.tar.gz";
      sha256 = "0aqr9hsrd5h8in1qjj9mhlv8apy9bm1s51niqbg40pqsqkla1bg5";
    };
  }
)
