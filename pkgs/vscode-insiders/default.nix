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
    version = "1629351634";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c08913337cb8b95493be8e99d62e0b3241563f6b/code-insider-x64-1629351634.tar.gz";
      sha256 = "0islah4j1264p3chv0v52r5m8n0c81ac1aqbmm9s95hffw5fb0lb";
    };
  }
)
