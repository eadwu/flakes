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
    version = "1724737979";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ff7a154d5e5e9034914f0466420f0f1407f0c95e/code-insider-x64-1724737979.tar.gz";
      sha256 = "007kzv7pap2z6dv7zijja3zixnh4q5sx2a4dm75w0q6p9v2imrv5";
    };
  }
)
