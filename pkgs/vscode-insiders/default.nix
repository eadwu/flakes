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
    version = "1648014009";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2eebd2a0159af379057a58c8bcb519f95bfd6328/code-insider-x64-1648014009.tar.gz";
      sha256 = "057p5a420slcq5c9k7ckmcm25hzfz1fhydx3qffv2pi9js2pmgr2";
    };

    postPatch = "";
  }
)
