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
    version = "1627450499";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e437d424c5e6de97632f5513229c7ebc2cf27a32/code-insider-x64-1627450499.tar.gz";
      sha256 = "0a894lbh13xjr77liwd49lrqcf32wsf6lj8h811ganyqdv79604m";
    };
  }
)
