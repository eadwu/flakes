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
    version = "1631079614";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/34861b8c8aa76b517f203743ad5b5d72ef5fcd81/code-insider-x64-1631079614.tar.gz";
      sha256 = "0mqsk995m45d3mb1ixckk99n3w9syh0zb6mm515qm6my285rjrls";
    };
  }
)
