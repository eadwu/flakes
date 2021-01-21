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
    version = "1611206858";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a4b35c2023a41efae1af2661026d57cea90ef5c/code-insider-x64-1611206858.tar.gz";
      sha256 = "1m56bh4n2jbdd91ryk10ixr4bjdgp7w7n9lm5g0afmy5kp89cy4n";
    };
  }
)
