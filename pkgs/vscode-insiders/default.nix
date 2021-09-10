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
    version = "1631295034";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/23cffa27b806f9e1733e15d611ec251dcdba2c42/code-insider-x64-1631295034.tar.gz";
      sha256 = "1ab4lhbpa0fl5ih6zplsaz7rsl92cl2lb8hb3c0x5rgax5549q29";
    };
  }
)
