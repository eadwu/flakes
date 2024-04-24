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
    version = "1713937740";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6d23b7f11a3d7292b9458f0de7160048089398f9/code-insider-x64-1713937740.tar.gz";
      sha256 = "0rkmk4ff4idj99ykl4sh569sjdh8bq30s2lfr5w3fn8bbjglwjw6";
    };
  }
)
