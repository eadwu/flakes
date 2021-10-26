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
    version = "1635239961";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dc1a6699060423b8c4d2ced736ad70195378fddf/code-insider-x64-1635239961.tar.gz";
      sha256 = "1b4mg01ap1wjig2v19y7675s2v85vrrpgj2wf3n92x4yxf6j4iw1";
    };
  }
)
