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
    version = "1634103593";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/793dc938900e9e36626c7618180081916070c994/code-insider-x64-1634103593.tar.gz";
      sha256 = "1njr8c8lqbhc881hdd28zcxwff1m7v29jicirnr2wwvsamc5k8bd";
    };
  }
)
