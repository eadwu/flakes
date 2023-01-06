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
    version = "1672984156";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/727d2d32aea02baf7d13fa38787e8ed64dd858d0/code-insider-x64-1672984156.tar.gz";
      sha256 = "0j7yxv55wgghpybgb76iagd8shqi4yscx23m4wjc082kqfzjpikx";
    };
  }
)
