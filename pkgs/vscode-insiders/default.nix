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
    version = "1634125693";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cca2d71a825cf1cdf893d245127fe430f2407249/code-insider-x64-1634125693.tar.gz";
      sha256 = "1mm21rw54xji96xgam7hvymv82gdmpkxm6x5dykwmsvd7rmdbbnk";
    };
  }
)
