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
    version = "1620117799";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/85f8ebf1687661c45fe2633bdd7f640164a20cc2/code-insider-x64-1620117799.tar.gz";
      sha256 = "0x7713qayygbk7v3mzypq0jsg8cnhmi3blpwlvfwhhpvybca2drc";
    };
  }
)
