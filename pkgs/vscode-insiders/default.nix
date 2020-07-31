{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596174438";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c9a2f78283b6e5ef708fb8869e2a5adaa476e42f/code-insider-1596174438.tar.gz";
      sha256 = "1mb7dr4akvr6z014k6467q54xmvri8qllc004ih18hqlpxrjfc6r";
    };
  }
)
