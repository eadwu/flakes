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
    version = "1694669602";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7b0ae6cf9d5a0c891ad1adc4da9c36c4dc453d4d/code-insider-x64-1694669602.tar.gz";
      sha256 = "0i2scv0dm5aw0p8yimmjs5a6jhy5nni5jcky0kpysnb1a86jz39q";
    };
  }
)
