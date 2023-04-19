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
    version = "1681883481";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/545d981034e010e2e31396faf224996c31eceab1/code-insider-x64-1681883481.tar.gz";
      sha256 = "17xaq3a6k8c7wlcc06dg77c86qjmvp4rfkvy58pmg0yl2f22l802";
    };
  }
)
