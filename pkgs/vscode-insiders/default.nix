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
    version = "1660023870";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5cf4a848f9d297f6708e6dbd27b2a48f03ac6595/code-insider-x64-1660023870.tar.gz";
      sha256 = "1j88jjyzvgdyyakd6ndvbmxlybsc8isi9k42w4ny4mlb31r667yq";
    };
  }
)
