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
    version = "1629885931";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e4ac631e9dbf0aa93a4371c4f5f3b8dc43422afb/code-insider-x64-1629885931.tar.gz";
      sha256 = "19xr4b8zzadwc56crlm2h0485ydnjwv85l8k37hf0yi75mk2j84q";
    };
  }
)
