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
    version = "1682531402";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/47c4c928bdaf0c81996d2dcce4286f63b9f26afd/code-insider-x64-1682531402.tar.gz";
      sha256 = "0dyl6kcmgrc5dqqx6ljc2ba4m5ak805nv303gxd8mxdx9hb7hr9b";
    };
  }
)
