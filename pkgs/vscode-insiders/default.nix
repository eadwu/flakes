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
    version = "1694164079";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e073d674f38acbf855e6b2c0d8f4fe29cb2a8c83/code-insider-x64-1694164079.tar.gz";
      sha256 = "02l8ihjf7drbq86n7qizz4p70lysrhq9g7iynq56ig2pimhmv1cc";
    };
  }
)
