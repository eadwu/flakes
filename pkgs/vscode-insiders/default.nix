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
    version = "1688469598";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/660393deaaa6d1996740ff4880f1bad43768c814/code-insider-x64-1688469598.tar.gz";
      sha256 = "1yif7i4pr26dfnwmb5qqchxrnd8irfgxzk011z3ay9y8gswiyb33";
    };
  }
)
