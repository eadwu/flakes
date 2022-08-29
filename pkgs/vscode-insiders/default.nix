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
    version = "1661788376";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/16faaf4eb07424d5d7dba7d12bffd64309c283f7/code-insider-x64-1661788376.tar.gz";
      sha256 = "0awkhf4c9zc9mh2p1i0ly99gxjhnmm4xi77hf1ky2ql9pxgcc15s";
    };
  }
)
