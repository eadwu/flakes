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
    version = "1661507191";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/35b971c92d210face8c446a1c6f1e470ad2bcb54/code-insider-x64-1661507191.tar.gz";
      sha256 = "1fcicpl1l9plzirgxhhljanic4cyc3bxzaymn9ffdmq5bg9vjg7y";
    };
  }
)
