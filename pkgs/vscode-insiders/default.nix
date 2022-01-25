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
    version = "1643089618";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9403de257a9ec7b0cea29e12530d6a6b448c38cc/code-insider-x64-1643089618.tar.gz";
      sha256 = "0h0vd3gfrd4938cvj240wphk7sh44m5vxrkrn3ahw962c8z0264q";
    };

    postPatch = "";
  }
)
