{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589394433";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/e1d8f5155c0db5ffdc130c9aa0f14efac02dfdfb/code-insider-1589394433.tar.gz";
        sha256 = "155azdpg7rd3gy0r51cmy5033y88gdx7c80xhzy6dxdcrjsc9axf";
      };
    }
  )
