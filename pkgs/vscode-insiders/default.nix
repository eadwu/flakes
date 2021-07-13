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
    version = "1626168874";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/807dfb817fef0d0c5729c1924bd4889b04fa405b/code-insider-x64-1626168874.tar.gz";
      sha256 = "1dbigkxawk0c3skyg3bi8vxhff5laqc4c52bc16axxkjk63h055y";
    };
  }
)
