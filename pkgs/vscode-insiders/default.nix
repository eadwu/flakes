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
    version = "1665571820";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/56f631257cfafdd76acbf062654ae4d8ad32e221/code-insider-x64-1665571820.tar.gz";
      sha256 = "00g9kfp8jj4816h58p95h5xc1b2xlzbrmz9y95471vrfwmivdyzv";
    };
  }
)
