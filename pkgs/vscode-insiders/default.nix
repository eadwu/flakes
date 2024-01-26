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
    version = "1706228477";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7f056a705e65c9b386ecc35e24fd5ffaaa6e8fc2/code-insider-x64-1706228477.tar.gz";
      sha256 = "0j65vr71i82b077m381xy57pdgg6wxa5apxg1pj9yqvkyc119cxl";
    };
  }
)
