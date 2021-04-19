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
    version = "1618810193";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8aff878db2542eea2dfb571c8bb485118bbb3113/code-insider-x64-1618810193.tar.gz";
      sha256 = "0zhgk1cviqb8sw27gi1akfymrbsi43d1yw6qw792xqcawkpyyj5x";
    };
  }
)
