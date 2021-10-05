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
    version = "1633398908";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/71ca6e8e74591ae5c577d52a2aa1bd0c3df5ac32/code-insider-x64-1633398908.tar.gz";
      sha256 = "08nys6v1n9v64n57bqwqqaqvd6l90m22dg8isyjrr19wg5p6abps";
    };
  }
)
