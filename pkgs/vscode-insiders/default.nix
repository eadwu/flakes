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
    version = "1694036555";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/df703092cd69d660608c3979b9db2e00ddb6185e/code-insider-x64-1694036555.tar.gz";
      sha256 = "1wfdq65q0ydhw2h1s7ryaz3ni8x6axk0l9xzlmmhw90dsmxbk42a";
    };
  }
)
