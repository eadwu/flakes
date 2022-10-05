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
    version = "1664927153";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/64bbfbf67ada9953918d72e1df2f4d8e537d340e/code-insider-x64-1664927153.tar.gz";
      sha256 = "1raxd396dppbi49k4a59vdj2qd5l11vns5hv2kv1cwykbr2wb7m2";
    };
  }
)
