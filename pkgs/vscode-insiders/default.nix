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
    version = "1689085875";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f8782370c90ec98467dc3590bcfa2eeb1f218107/code-insider-x64-1689085875.tar.gz";
      sha256 = "119nvg5vrinxxysxxky3g5yrgbz4fbc5pvlq4vcvfdpvb1pp0nhp";
    };
  }
)
