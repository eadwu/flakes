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
    version = "1631263091";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0884da1650baa24994d23d2a3742823c1186e526/code-insider-x64-1631263091.tar.gz";
      sha256 = "1knxa5h53sgyxrrsr7jcnmbba0whmnm3ydkbdby3vlkp004xzxh3";
    };
  }
)
