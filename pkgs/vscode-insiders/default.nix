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
    version = "1668059196";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9d5741f01a67beea273121615b2d015fc298d9ea/code-insider-x64-1668059196.tar.gz";
      sha256 = "0rrpz332akfkaqaw9h26c68sy2391hljd5pnnq744b9qcjfcm7jx";
    };
  }
)
