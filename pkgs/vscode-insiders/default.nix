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
    version = "1629093237";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9dd4f31a21d63deea5e1fc322cfc802413b31d95/code-insider-x64-1629093237.tar.gz";
      sha256 = "1zb5073ysqypaf8d73x6dg7xygazv1r4qzqim3fgwra9kzxq865v";
    };
  }
)
