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
    version = "1653889499";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/88d9a0848c3097cb197bee35862dd174f3966fc4/code-insider-x64-1653889499.tar.gz";
      sha256 = "0fhid8xzdjyd3d3m8z3jaap59709z6dry9ml20c9frcka4jn0jik";
    };

    postPatch = "";
  }
)
