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
    version = "1646753119";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92f4bd7894c3b790d37b1eec3c7fb5e5f8618f70/code-insider-x64-1646753119.tar.gz";
      sha256 = "083i90aplv0fn7q89a4js02yj9ncm7jr25r4rzknympgxzyf6z1x";
    };

    postPatch = "";
  }
)
