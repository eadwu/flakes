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
    version = "1621531823";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0b355ffc89b2020a941ce149f2704acf13a49afd/code-insider-x64-1621531823.tar.gz";
      sha256 = "0xrw1klc1pvjm2n627am6v61p9z6hxs5dnsca21iv2jr01m72469";
    };
  }
)
