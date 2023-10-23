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
    version = "1698039223";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cbd09078e6221fa1553c5a59dd25e63ad767911a/code-insider-x64-1698039223.tar.gz";
      sha256 = "0av4lw2w6a36ah4y9rl1g4wmciinp7drd7rk9aa5lh9s1c6jphsb";
    };
  }
)
