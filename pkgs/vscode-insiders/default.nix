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
    version = "1678081687";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0cab3cc3cbe4d4ac2cbf30e8c30351d9db6dcfb4/code-insider-x64-1678081687.tar.gz";
      sha256 = "0y75ywhkg006045vmf37z82lbh5yv4j1z9gb84n3l6qwdzwjqxpb";
    };
  }
)
