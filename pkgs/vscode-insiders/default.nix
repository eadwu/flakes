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
    version = "1726811093";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/527e41ff551bb1001d2f224c2dec2e2ea3b66832/code-insider-x64-1726811093.tar.gz";
      sha256 = "19apqlwkhg750dfaalpmmgjlbqssprq49rf2l56r4m1k9jjbb2s8";
    };
  }
)
