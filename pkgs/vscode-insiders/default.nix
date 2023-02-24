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
    version = "1677253372";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/07d120e10a4d3ac790e65b8a6dc85195546df664/code-insider-x64-1677253372.tar.gz";
      sha256 = "11q18w0ahbhnlp45l3q5ilvwgw2pn4sclfl4z51q6hmcmqnb16ks";
    };
  }
)
