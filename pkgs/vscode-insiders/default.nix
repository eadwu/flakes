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
    version = "1744101622";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/86489f1015f670cc7c1ef18d937ed87d38002071/code-insider-x64-1744101622.tar.gz";
      sha256 = "08iirzlky5s5yfawrqy408jiwklfs6l7b802c0qdgck1bdh63c4z";
    };
  }
)
