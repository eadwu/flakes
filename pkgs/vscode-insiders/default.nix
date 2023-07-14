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
    version = "1689331423";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dc142e4cd111b8f370d0549d8c207df7de55facd/code-insider-x64-1689331423.tar.gz";
      sha256 = "1sq9ypn5344gs8vvv4irhyh1nz9lrnn65j9iix6i0ls56rfbfvxf";
    };
  }
)
