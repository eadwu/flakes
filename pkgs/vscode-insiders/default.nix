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
    version = "1689831376";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/daf9647eec0867d7bc32d935478fec4bd9de1f56/code-insider-x64-1689831376.tar.gz";
      sha256 = "1cv6mn4dilznwk6m2nfqasa8j4vb4i6ffnhxj02nkg14m8078i6a";
    };
  }
)
