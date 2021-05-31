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
    version = "1622438967";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4f3d865a6b46a4ead49cf83fe1c30d95d0a34220/code-insider-x64-1622438967.tar.gz";
      sha256 = "0vlkqg155d0xsz0qv8ywhn0y79gpwwd5ah7r7rh8pjqmqw3xmf0j";
    };
  }
)
