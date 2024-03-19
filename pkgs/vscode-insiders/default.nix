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
    version = "1710853819";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/92e85248d7b370a3a7478baf056a5d2363037d2b/code-insider-x64-1710853819.tar.gz";
      sha256 = "1l70j69zfk6vg4yd9a7ki6hwn5svbg32xwa4ld5kqx0zhg4x6xwa";
    };
  }
)
