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
    version = "1628573824";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/71b299184f7908491345aec5e231599c3ae8753b/code-insider-x64-1628573824.tar.gz";
      sha256 = "1ip40ksbg8yrwzv5ym20i5fk7d8s859jzmdllmrxkgmajll03ifz";
    };
  }
)
