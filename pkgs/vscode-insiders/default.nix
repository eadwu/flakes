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
    version = "1636609043";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3a79384dbf81dc6eba781ff669996d2042ca3b72/code-insider-x64-1636609043.tar.gz";
      sha256 = "0zhmcip5gavp4fi731db7pwgahzx5l85niyvg2zfpchb07a2kdb9";
    };
  }
)
