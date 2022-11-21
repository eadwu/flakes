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
    version = "1669009664";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fef85ea792f6627c83024d1df726ca729d8c9cb3/code-insider-x64-1669009664.tar.gz";
      sha256 = "178gdliwnh30brpb4fgp9qs96xcdishm2apyiwp8b390mlj6cad4";
    };
  }
)
