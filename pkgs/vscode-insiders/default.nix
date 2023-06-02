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
    version = "1685660861";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9ea4f2590f43c40fe30997abc7e9344ad6c3a961/code-insider-x64-1685660861.tar.gz";
      sha256 = "045wzm7xhv885hgb2gfhiav3scjk06vbsbm14j18r68s4d0r6plk";
    };
  }
)
