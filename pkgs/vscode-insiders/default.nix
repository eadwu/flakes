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
    version = "1698666693";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7c1bff30eae1fcb2565c20a062a4fb44b7dd562b/code-insider-x64-1698666693.tar.gz";
      sha256 = "0pbsmb0gs9kc2mhckk6yrnlq038cdfjnwrhlyix96al6c5r9sjaa";
    };
  }
)
