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
    version = "1641447736";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9afbea7caab9dd06592ddd98aa4161b43b126d3f/code-insider-x64-1641447736.tar.gz";
      sha256 = "1pkcrk019ijccwc01xpvhjba8bkpvkwqf3gyavmhjp7c38dqn1w0";
    };

    postPatch = "";
  }
)
