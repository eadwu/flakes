{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600839945";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f943318042a3b9229049aea86cea04d0ff9c8210/code-insider-x64-1600839945.tar.gz";
      sha256 = "1dacxqdd7whwdscrj0f2zpmizw3qs422z0g9n2ma4rdnjmn6rv2d";
    };
  }
)
