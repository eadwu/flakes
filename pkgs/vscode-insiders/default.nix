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
    version = "1691559178";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bf9c8105647b1e9d244f0f00155c21298e7554cf/code-insider-x64-1691559178.tar.gz";
      sha256 = "1f31v3c0zaa8y8158dmrvhzngxkn62b7q81xpmyw3kxb164lnfmx";
    };
  }
)
