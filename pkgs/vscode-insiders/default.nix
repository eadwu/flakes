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
    version = "1608270140";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c927a8015b9e26bd454d6e293bb0384aa1975d06/code-insider-x64-1608270140.tar.gz";
      sha256 = "1a14jkzhiimbij22ab7d9sgf4dvbwb790v83f79sdrnl8j9sp38l";
    };
  }
)
