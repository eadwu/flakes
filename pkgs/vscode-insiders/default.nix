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
    version = "1666908129";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3544aabd5a2b0da2cd3a6f3fa3f00759aa9d9709/code-insider-x64-1666908129.tar.gz";
      sha256 = "10y6hx1m9hbphf3cm6a1hcffrm3yrw1bpvp1jlf8id0y0zy5ydjn";
    };
  }
)
