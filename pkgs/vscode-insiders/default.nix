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
    version = "1701984103";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/182f5125f2f8a8469e9dac4ed4795b804671bf7d/code-insider-x64-1701984103.tar.gz";
      sha256 = "03q4bxp50f69s6v6w99v0nsqcwl54az1yk0cyks7kc5hx9swyczh";
    };
  }
)
