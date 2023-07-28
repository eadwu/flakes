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
    version = "1690546089";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9800cf6dd6bf4634889d60720ef46a400f3a7298/code-insider-x64-1690546089.tar.gz";
      sha256 = "1xc11bnpqdca1q3rn6krzvmnvl71rppgxmfdh89w7slrfkl47lcx";
    };
  }
)
