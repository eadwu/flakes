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
    version = "1619760661";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a348d103d1256a06a2c9b3f9b406298a9fef6898/code-insider-x64-1619760661.tar.gz";
      sha256 = "0s9nxrw2mp02ay83ibqjxyh43bbmziar3lqmqnx263vhvzx36n1i";
    };
  }
)
