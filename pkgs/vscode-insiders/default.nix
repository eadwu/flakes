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
    version = "1695374990";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c72447e8d8aaa7497c9a4bd68bc4301584b92beb/code-insider-x64-1695374990.tar.gz";
      sha256 = "0a09c3qfnyxkqlw26majgcw3ncxd0637gbpd4kk47mgzpcyx99sb";
    };
  }
)
