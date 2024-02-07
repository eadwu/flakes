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
    version = "1707284811";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9db1b0571e119289a2264971bdac75793965e063/code-insider-x64-1707284811.tar.gz";
      sha256 = "00bbi3hblwm1h9z9qwvqx1zxzzl3qs0n4wdqijzpvxaj2i0vyq9m";
    };
  }
)
