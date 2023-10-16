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
    version = "1697434522";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0c36b92c82064882a228487040187cfc13669c0f/code-insider-x64-1697434522.tar.gz";
      sha256 = "0h73l4xi4472zmmbq5x80fp3n7a6d5v3sbzxp5f7f71a9r55b12j";
    };
  }
)
