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
    version = "1739512485";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/44028decf1ca81a0cbf99a65ab72cca6735449f2/code-insider-x64-1739512485.tar.gz";
      sha256 = "0h5nbvbvmsddwn9109smvzry1if0fxc82i7kipwg09696b21apdm";
    };
  }
)
