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
    version = "1669268814";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2eca6d38dede985bf6180cca64d43c16a02e9a13/code-insider-x64-1669268814.tar.gz";
      sha256 = "00ycixrq085kjw461l0xzw8a5gdycd38pv0bmxwrmrrl0z4v71wk";
    };
  }
)
